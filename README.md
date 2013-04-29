#Seattle Hacks

![Seattle Hacks logo](http://seattlehacks.com/img/seattlehacks_logo_large.png)

This is the repo for [Seattle Hacks][], a community-driven online resource by devs for devs. The purpose of the site is to highlight the best resources and events for developers in the Seattle area. One of the design goals was to create a site that would be resistant to blog and event listing SPAM while still providing minimal friction to developers for posting content. Here's how we did it:

##GitHub Pages powered website 
All of the files that comprise the Seattle Hacks website are stored in a repo on Github. Github provides free website hosting through their [Pages][] product. All a developer needs to do is place their files in a branch called “gh-pages” and GitHub will make those files available as a website. By default Github will provide them with a domain for their site (i.e. username.github.io/repo) but they can configure GitHub to use a custom domain.

This is the first step to ensure that only developers are posting content to the site.
Anyone who has a Github account can fork this repo and submit a pull request to update the content of this website. While this is easy enough to do for a developer, it is quite difficult for a non-developer.


##Jekyll powered blog
In addition to fairly static content on the site (such as a list of meetups in Seattle) there is a blog powered by [Jekyll][]. Jekyll is a static blog generator written in Ruby. Static blog generators have two huge benefits compared to tools like Wordpress:

1. They are secure (no applying security patches to static HTML!)
2. They are fast (since you’re just serving static files)

Normally, you would have your blog files on your local machine, run Jekyll locally and then push the generated files up to a web host. Since the author of Jekyll also happens to be one of the co-founders of Github, Jekyll is built-in to GitHub. Publishing a new post is as simple as composing a properly named markdown file, placing it in the _posts directory and sending a pull request. GitHub will automatically run Jekyll on the repo following a commit and regenerate the entire site. This is the second step in curating content. Files needs to be named properly, placed in the correct directory and contain valid meta-data and markup. Once again, trivial for a developer, but very challenging for anyone else.

##Github Webhooks
When a post goes out, it will also be automatically tweeted by [@SeattleHacks][]. This is accomplished using a [Github webhook][]. Webhooks are great because they let you register a URL that we will receive an HTTP request anytime an event happens, in this case a push to our repo.

Our [webhook service][] is written in Ruby and uses the Sinatra micro web framework. Once the service is deployed, go to the “Settings” tab for your repo and paste the URL to your service into the WebHook URLs list.


##JSON powered calendar of events
If a blog post is about an upcoming event, you can simply add some meta-tags to your blog post and the event will be added to an automatically re-generated [JSON file][]. This JSON file functions as an API for the [calendar][] page. This allows us to deal with the shortcoming of vanilla Jekyll and the fact that GitHub Pages does not support custom plugins.

In addition to a webpage, we also generate a properly formatted iCal file. This was slightly tricky for me as the [documentation for the iCal file format][] isn’t the easiest to understand, but I found an [iCal validator][] that was very helpful in locating and fixing my bugs.

##Powered by the Developer Community
Seattle Hacks is powered by the developer community and all pull requests are reviewed by the [collaborators][] for the repo. This is the last step in ensuring the quality of the content being posted. The content of the site is only as good as the contributions from the community.

The software is MIT licensed. Feel free to fork and deploy in your own community!

[seattle hacks]:http://seattlehacks.com
[pages]:http://pages.github.com
[jekyll]:https://github.com/mojombo/jekyll
[github webhook]:https://help.github.com/articles/post-receive-hooks
[@seattlehacks]:http://twitter.com/SeattleHacks
[collaborators]:https://github.com/crabasa/seattlehacks/settings/collaboration
[json file]:http://seattlehacks.com/api/cal.json
[calendar]:http://seattlehacks.com/calendar
[webhook service]:https://github.com/crabasa/seattlehacks/tree/master/github-webhook
[documentation for the iCal file format]:http://www.kanzaki.com/docs/ical/
[iCal validator]:http://severinghaus.org/projects/icv/
