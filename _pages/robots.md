---
layout: humans
permalink: '/robots.txt'
sitemap:
    changefreq: yearly
    priority: 0.4
---
User-agent: Googlebot
Disallow: /404.html

User-agent: *
Disallow: /formspree-verify.txt
Allow: /

Sitemap: {{ '/sitemap.xml' | absolute_url }}
