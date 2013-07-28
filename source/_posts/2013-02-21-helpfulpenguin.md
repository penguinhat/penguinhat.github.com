---
layout: post
title: helpfulpenguin.com is live!
---
<p class="meta">21/02/2013</p>

I've released a toy project that can make any url easy to say by creating a temporary redirect. It's powered by django and inspired by [zigg.be][ziggbe]. In fact, the only real inovation over zigg.be is that this site has an easier to say domain and a bookmarklet.

You can check it out at [helpfulpenguin.com][hp]

## Things that went well

### Fabric

This was the first time I'd used fabric and I'm very happy with it. Being able to deploy with `fab pull deploy -R web` is a lot easier than manually pulling git repositories and mucking about with servers.

However, one thing I did find out the hard way is that you have to be careful to always run the python executable provided by virtualenv and not the system python. When I first tried to use fabric to run django management commands I tried to do 

    run("source virtualenv")
    run("python manage.py collectstatic --noinput")
    run("python manage.py migrate")

when I should have instead done

    run("/path/to/virtualenv/python manage.py collectstatic --noinput")
    run("/path/to/virtualenv/python manage.py migrate")

However, that isn't anything to do with Fabric, it's just me being stupid. If you are stuck in the stone age like I was then you really should look into Fabric. 

### Using Linode

Linode are a great hosting company. Their StackScrips made setting up the a secure live server really quick and simple and I appreciated being able to just log into a server with a bash shell and get on with things instead of dealing with proprietary web apps like I've had to do in the past. 

### Using Bootstrap

Bootstrap allowed me to produce a clean design quickly and as a bonus the site works well on an iPad. I'd also followed most of the instructions in [this article][design] which made the site look less like it was made by a design illiterate developer. 

## Things that could be improved on

### django-rest-framework was overkill for my needs

I used django-rest-framework to create a JSON api for redirects but the landing page itself uses a django form to process and create a new redirect. I did manage to get a nice little bookmarklet out of the API however, so that's nice.

### No idea how to drive traffic to the site
Making something is easy but getting people to use it is another thing entierly. helpfulpenguin.com is only really a small toy project and I haven't really put any thought into how I would drive traffic to it. I'm not sure that there is a large untapped market of people who are crying out for a way to make urls easier to say if I'm honest.

[hp]: http://www.helpfulpenguin.com "helpfulpenguin.com"
[ziggbe]: http://zigg.be "Zigg.be"
[design]: http://24ways.org/2012/how-to-make-your-site-look-half-decent/
[fabric]: http://docs.fabfile.org/en/1.5/
