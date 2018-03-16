---
layout: archive
classes: wide
permalink: /year-archive/
title: "Posts"
author_profile: true
---
<div class="grid__wrapper">
  {% for post in year.items %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>

