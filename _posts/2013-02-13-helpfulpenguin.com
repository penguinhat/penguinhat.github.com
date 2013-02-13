---
layout: post
title: helpfulpenguin.com is live
---

{{ page.title }}
================

<p class="meta">13/02/2013</p>

I've just released a little toy project I mae. It's a url verbuliser called helpfulpenguin.com that turns a long url into a short one. It's a total zigg.be ripoff so you should check that out if you found my site useful.

You can see it here: [helpfulpenguin.com]

It's just a very simple django site I whipped up just for fun. It's been far too long since I made something for myself so I thought that I'd just do it.

Things that went well
---

This project was the first time that I'd used django-rest-framework, Fabric and South. Both of these tools are really useful and using them both together means that I can quickly and easily deploy any change to helpfulpenguin.com with a single command, even if that change requires a database schema update.

Linode are a decent hosting company and their StackScrips made setting up the live server piss easy.

Bootstrap looks nice and tidy and as a bonus the site really works on an iPad (although I'm not sure that anyone on an iPad really needs a url verbuiliser)

Things that I'd like to add to it
---

A bookmarklet

Things that I didn't do well
---

I used django-rest-framework to create a JSON api for redirects but the landing page itself uses a django form to process and create a new redirect

Making something is easy but getting people to use it is another thing entirly. This project is only really a small toy project and it can't really grow much. I'm not sure that there is a large untapped market of people who are crying out for a url verbuliser if I'm bluntly honest. Having it as a bookmarklet makes a lot more sense than as a site.

No real way to monitise. It's a bit of a dirty word by servers don't pay for themselves. I've stolen a trick from zigg.be in that the amazon link on the homepage is an affilcate link but that's not really going to drive a lot of money my way. I didn't make this with the intention of getting rich off it but a little something would be nice. 
