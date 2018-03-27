---
layout: humans
permalink: '/robots.txt'
sitemap:
    changefreq: yearly
    priority: 0.4
---
User-agent: *
Disallow: /assets/
Allow: /

Sitemap: {{ '/sitemap.xml' | absolute_url }}
