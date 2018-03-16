---
layout: archive
classes: wide
permalink: /year-archive/
title: "Recent Articles"
author_profile: false
---
{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'"  %}
{% for year in postsByYear %}
  <h2 id="{{ year.name | slugify }}" class="archive__subtitle">{{ year.name }}</h2>
<div class="grid__wrapper">
  {% for post in year.items %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>
{% endfor %}
