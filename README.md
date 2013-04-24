Seattle Hacks
=============

![Seattle Hacks logo](http://seattlehacks.com/img/seattlehacks_logo_large.png)

This is the repo for [Seattle Hacks][], a community-driven online resource by devs for devs. The purpose of the site is to highlight the best resources and events for developers in the Seattle area. One of the design goals was to create a site that would be resistant to blog and event listing SPAM while still providing minimal friction to developers for posting content. Here's how we did it:

GitHub Pages powered website 
----------------------------

Anyone can fork this repo and submit a pull request to update the content of this website. While this is easy enough to do for a developer, it is quite difficult for a non-developer. This is the first step in ensuring that only developers are posting content to the site.

Jekyll powered blog
-------------------

Submitting a post is as simple as composing a properly named and formatted markdown file and sending a pull request. When a post goes out, it will also be automatically tweeted by [@SeattleHacks][]. All pull requests are reviewed by the [collaborators][] for this repo. This is the second step in ensuring the quality of the content being posted.

JSON powered calendar of events
-------------------------------

If your blog post is about an upcoming event, you can simply add some meta-tags to your blog post and it will be added to an automatically re-generated [JSON file][]. This JSON file functions as an API for the calendar page. This allows us to deal with the shortcoming of vanilla Jekyll and the fact that GitHub Pages does not support custom plugins.

Powered by the Developer Community
----------------------------------

Seattle Hacks is powered by the developer community. The content of the site is only as good as the contributions from the community. 

The software is MIT licensed. Feel free to fork and deploy in your own community!


[Seattle Hacks]:http://seattlehacks.com
[@SeattleHacks]:http://twitter.com/SeattleHacks
[collaborators]:https://github.com/crabasa/seattlehacks/settings/collaboration
[JSON file]:http://seattlehacks.com/api/cal.json
