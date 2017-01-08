---
layout: system
title: Sitemap
img: static/ostrich-banner.jpeg
permalink: /user-sitemap/

---

## Pages
{% for page in site.pages %}{% unless page.sitemap.exclude == "yes" %}<a class="links" href="{{ site.url }}{{ page.url | remove: 'index.html' }}" target="_blank">{{page.title}}</a>{% endunless %}{% endfor %}
 
 
## Posts
{% for post in site.posts %}{% unless post.published == false or post.layout == "redirected" %}<a class="links" href="{{ site.url }}{{ post.url }}" target="_blank">{{post.title}}</a>{% endunless %}{% endfor %}
