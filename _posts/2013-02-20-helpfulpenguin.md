---
layout: post
title: helpfulpenguin.com is live!
---

{{ page.title }}
================

<p class="meta">13/02/2013</p>

I've released a django toy project that I whipped up for fun. It's a url verbuliser called that turns a long url into an easy to say one by creating a temporary redirect. It's heavily inspired by [zigg.be][ziggbe]

You can see it here: [helpfulpenguin.com][hp]

## Things that went well

### Using best practices from the start

I was careful to write unit tests from the start and I found that even though it was a small project it was still well worth it.

### Fabric

This was the first time I'd used fabric and I'm very happy with it. Being able to deploy a site with `fab pull deploy -R web` is a damn sight better than opening a shell into a server and manually pulling git repos and touching servers. It sounds like a small thing but it makes deployment so much easier. :w

One thing I did find out the hard way is that you have to be careful to always run the virtualenv python and not the system python. When I first tried to use fabric to run django management commands I tried to do 

    run("source virtualenv")
    run("python manage.py collectstatic --noinput")
    run("python manage.py migrate")

when I should have instead done

    run("/path/to/virtualenv/python manage.py collectstatic --noinput")
    run("/path/to/virtualenv/python manage.py migrate")

However, that's just me being a tit and not anything to do with Fabric. Really, if you are stuck in the stone age like I was (am?), then you really should look into Fabric. If I've taken one thing away from this, it's that the tools I'm currently using at work aren't good enough.

### Using Linode

Linode are a really good hosting company and their StackScrips made setting up the a secure live server really simple.

### Using Bootstrap

Bootstrap looks nice and tidy and as a bonus the site really works on an iPad (although I'm not sure that anyone on an iPad really needs a url verbuiliser). I'd also followed most of the instructions in [this article][design] which made the site look less like it was made by a design illiterate developer. 

## Things that I didn't do well

### django-rest-framework was overkill for my needs

I used django-rest-framework to create a JSON api for redirects but the landing page itself uses a django form to process and create a new redirect. I did manage to get a nice little bookmarklet out of the API however, so that's nice.

### No idea how to drive traffic to the site
Making something is easy but getting people to use it is another thing entirly. This project is only really a small toy project and no thought has been put into how I would drive traffic to it.. I'm not sure that there is a large untapped market of people who are crying out for a url verbuliser if I'm bluntly honest. 

### No real way to monitise.

It's a bit of a dirty word but servers don't pay for themselves. I've stolen a trick from zigg.be in that the amazon link on the homepage is an affilcate link but that's not really going to drive a lot of money my way. I didn't make this with the intention of getting rich off it but a little something would be nice. 

[hp]: http://www.helpfulpenguin.com "helpfulpenguin.com"
[ziggbe]: http://zigg.be "Zigg.be"
[design]: http://24ways.org/2012/how-to-make-your-site-look-half-decent/
[fabric]: http://docs.fabfile.org/en/1.5/
