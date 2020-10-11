---
title: My Favorite Open Source Apps for Work
author: VeryBadFrags
layout: post
categories:
  - Software
tags:
  - Open Source
  - Work
  - Windows
  - macOS
  - Linux
comments: true
---
Here is a list of open source software that are useful in a professional context.

## VSCodium

Microsoft's Visual Studio Code is a powerful text editor / light IDE with a very modern design, and a rich plugin ecosystem. While it is already open-source, it contains binaries and telemetry that is proprietary. VSCodium is a version of the project without any of the analytics and closed-source code.

https://vscodium.com/

## Insomnia

An open source alternative to Postman. It lets you manage a collection of HTTP requests to test your apis.

https://insomnia.rest

## DBeaver

A universal Database client.

https://dbeaver.io

## Element

A free, decentralized, open source alternative to Slack and Microsoft Teams.

https://element.io

## Rectangle (macOS)

Resize and tile your windows with keyboard shortcuts.

https://rectangleapp.com

{% if page.comments %}
<div id="disqus_thread"></div>
<script>
    var disqus_config = function () {
        this.page.url = '{{ page.url | absolute_url }}';
        this.page.identifier = '{{ page.id}}';
    };

    (function() {  // REQUIRED CONFIGURATION VARIABLE: EDIT THE SHORTNAME BELOW
        var d = document, s = d.createElement('script');
        
        s.src = 'https://verybadfrags.disqus.com/embed.js';
        
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
{% endif %}
