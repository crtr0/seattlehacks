Seattle Hacks
=============

Code &amp; website for http://seattlehacks.com

Submitting a Post
-----------------
Submitting a post is as simple as sending a pull request:

1. Fork this repo
2. Checkout the gh-pages branch 
3. Compose your post using Markdown syntax
4. Name the file YYYY-MM-DD-title.md and copy to _posts directory
5. Submit a pull request for this new file

Please make sure you include a YAML header at the top of the file that defines the `title` or your post and specifies the `post` layout.
```
---
title: Test
layout: post
---
```

Submitting an Event
-------------------
Submitting an event is just like submitting a post. Follow the instructions above and you're 90% of the way there. Consider the content of the post to both be an announcement of your event and the core information that people need to know to find your event.

The only difference is that in order for your event to make it into our calendar you need to define some additional tags. All of these tags are required:

```
---
tags:
- event
- cal:name=Test Event #1
- cal:allday=false
- cal:start=2013-03-28T14:10:04+00:00
- cal:end=2013-03-28T14:10:04+00:00
- cal:venue=Hub Seattle
- cal:website=http://test.event.com
---
```
