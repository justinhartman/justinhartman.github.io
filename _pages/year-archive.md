---
layout: archive
permalink: /year-archive/
title: "What I've written"
header:
  overlay_image: /assets/images/pages/what-ive-written.jpg
  overlay_filter: rgba(0, 0, 0, 0.5)
  caption: "Photo by [**Pexels**](https://www.pexels.com/photo/person-holding-black-and-orange-typewriter-891674/)"
  teaser: '/assets/images/pages/what-ive-written_580x300.jpg'
excerpt: Here's a collection of articles, blog posts and more which I've written over the years.
author_profile: true
classes: wide
toc: true
---
{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'"  %}
{% for year in postsByYear %}
  <h2 id="{{ year.name | slugify }}" class="archive__subtitle">{{ year.name }}</h2>
  {% for post in year.items %}
    {% include archive-single.html  %}
  {% endfor %}
{% endfor %}
