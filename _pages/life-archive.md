---
layout: archive
permalink: /life/
redirect_from:
  - /year-archive/
  - /justin@hartman.me/
title: "My personal life"
author_profile: true
classes: wide
header:
  overlay_image: /assets/images/pages/what-ive-written.jpg
  overlay_filter: rgba(0, 0, 0, 0.5)
  caption: "Photo by [**Pexels**](https://www.pexels.com/photo/person-holding-black-and-orange-typewriter-891674/)"
  teaser: '/assets/images/pages/what-ive-written_580x300.jpg'
excerpt: This is my space where I house a collection of personal blog posts which I've written over the years. Both current as well as older writings from my original blog are featured here below.
sitemap:
    changefreq: weekly
    priority: 0.9
---
<div class="grid__wrapper">
    <h1 id="posts" class="archive__subtitle">Life</h1>
  {% for post in site.posts %}
    {% include archive-single.html %}
  {% endfor %}
</div>
