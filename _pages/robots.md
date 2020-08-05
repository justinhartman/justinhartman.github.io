---
layout: humans
permalink: '/robots.txt'
sitemap:
    changefreq: yearly
    priority: 0.4
last_modified_at: 2020-08-06T00:32:32+02:00
---
User-agent: Googlebot
Disallow: /404.html

User-agent: *
Disallow: /formspree-verify.txt
Allow: /

Sitemap: {{ '/sitemap.xml' | absolute_url }}
