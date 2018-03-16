---
layout: archive
classes: wide
permalink: /year-archive/
title: "Posts"
author_profile: true
---
{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'"  %}
{% for year in postsByYear %}
<div class="grid__wrapper">
  {% for post in year.items %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>
{% endfor %}
