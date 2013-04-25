require 'sinatra'
require 'twitter'
require 'json'
require './creds'

Twitter.configure do |config|
  config.consumer_key = Creds.CONSUMER_KEY
  config.consumer_secret = Creds.CONSUMER_SECRET
  config.oauth_token = Creds.OAUTH_TOKEN
  config.oauth_token_secret = Creds.OAUTH_TOKEN_SECRET
end

post '/github-hook' do
  push = JSON.parse(params[:payload])
  puts push.inspect
  push['commits'].each do |commit|
    if !commit['message'].start_with?('Merge')
      commit['added'].each do |add|
        if add.start_with?('_posts/')
          # a new post has been committed, let's send a tweet
          # we expect the commit message to be the title of the post
          title = commit['message'].length > 109 ? commit['message'][0..106] + '...' : commit['message']
          path = add.split('_posts')[1].split('-').take(3).join('/') + '/'
          path << add.split('_posts')[1].split('-').drop(3).join('-').sub(/\..*/, '/')
          Twitter.update('New post: ' + title + ' http://seattlehacks.com' + path)
        end
      end
    end
  end
  "OK"
end
