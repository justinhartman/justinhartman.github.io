---
layout: archive
title: "Sitemap"
permalink: /sitemap.html
author_profile: false
classes: wide
sitemap:
    changefreq: weekly
    priority: 1.0
last_modified_at: 2020-08-06T00:32:32+02:00
---

A list of all the posts and pages found on the site. For you robots out there, I have an [XML version]({{ "sitemap.xml" | absolute_url }}) available for digesting; just for you.
{: .notice--primary}

<h1>What I've Written</h1>
{% for post in site.posts %}
  {% include archive-single.html %}
{% endfor %}

{% capture written_label %}'None'{% endcapture %}

{% for collection in site.collections %}
{% unless collection.output == false or collection.label == "posts" %}
  {% capture label %}{{ collection.label }}{% endcapture %}
  {% if label != written_label %}
  <h2>{{ label }}</h2>
  {% capture written_label %}{{ label }}{% endcapture %}
  {% endif %}
{% endunless %}
{% for post in collection.docs %}
  {% unless collection.output == false or collection.label == "posts" %}
  {% include archive-single.html %}
  {% endunless %}
{% endfor %}
{% endfor %}
