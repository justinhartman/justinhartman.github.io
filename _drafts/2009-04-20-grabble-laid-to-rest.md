---
published: true
title: Grabble laid to rest
wordpress_id: 649
date: '2009-04-20 09:00:23 +0200'
last_modified_at: '2009-04-20 07:00:23 +0200'
categories:
- life
tags:
- Grabble
- Technology
- Projects
- Open Source
- Search
comments:
- id: 4036
  author: verone
  author_email: perseval@gmail.com
  author_url: http://afrotic.blogspot.com
  date: '2009-04-20 09:47:35 +0200'
  last_modified_at: '2009-04-20 07:47:35 +0200'
  content: "Nice(&amp; great) post(or making of...) !\r\nso your first version running
    on nutch ? \r\nme too i used nutch, and aspeek for my search engines projects...
    but Yahoo ! Boss... is so cute !\r\nGood luck"
- id: 4039
  author: verone
  author_email: perseval@gmail.com
  author_url: http://afrotic.blogspot.com
  date: '2009-04-20 10:50:15 +0200'
  last_modified_at: '2009-04-20 08:50:15 +0200'
  content: so i think, i wanna make my own search engine too with 4hoursearch... i
    will send you URL
- id: 4040
  author: arthur charles van wyk
  author_email: arthurcvanwyk@gmail.com
  author_url: http://www.arthurficial.com
  date: '2009-04-20 11:12:54 +0200'
  last_modified_at: '2009-04-20 09:12:54 +0200'
  content: "I had no idea that you actually owned Grabble. I thought it was just something
    you worked on as one of your professional endeavours. \r\n\r\nSince broad search
    is out of the question, why not try niche search. Perhaps a search engine on all
    things pertaining to mobile technology.. something like that.. or position it
    to only search RSS feeds.. \r\n\r\nisn't that where technology is always going..
    niche..\r\n\r\nthen again.. unlike Azazel.. time is not on your side"
- id: 4041
  author: Justin Hartman
  author_email: justin@hartman.me
  author_url: https://justin.hartman.me
  date: '2009-04-20 11:32:16 +0200'
  last_modified_at: '2009-04-20 09:32:16 +0200'
  content: "@verone best of luck man, let's see what you come up with!\r\n\r\n@arthur
    yes, if time was on my side and I felt that it could be something worth pursuing
    then I would focus more energy on it.\r\n\r\nInitially Grabble was SA only results
    and I thought that angle would do it but alas it didn't.\r\n\r\nTo be honest,
    I have to now focus my time on things that actually do work and Afrigator is that
    thing. I think my time is better spent trying to improve and grow that ;)"
- id: 4087
  author: Yaarik
  author_email: majilt@gmail.com
  author_url: http://twitter.com/yaarik
  date: '2009-05-04 12:10:10 +0200'
  last_modified_at: '2009-05-04 10:10:10 +0200'
  content: "This is (surprisingly for me) the first time I have heard of this site
    and I am not very familiar with you or your work  either (I know about Afrigator
    though)! I must have been under a cuckoo's nest or something because you seem
    like a very busy guy in the \"SA internet\" world :)\r\n\r\nI have scowered your
    site now and I think I am a bit more knowledgeable than yesterday. I will be keeping
    myself up to date with your happenings. Thanks Justin.\r\n\r\nDries."
---
<img align="right" src="/assets/images/uploads/2009/04/grabble-small.jpg" alt="Grabble" />In 2006 I was fascinated with search. So much so that I learnt all that I could about search engines and SEO and this was largely driven by the fact that I was in complete awe of Google at the time. All of this inspired me to start a South African search engine and during 2006 I launched <a href="http://www.grabble.co.za">Grabble</a>.
<img src="/assets/images/uploads/2009/04/picture-50-500x295.png" alt="Old Grabble" title="Old Grabble" width="500" height="295" class="alignnone size-medium wp-image-652" />
Because I only understood the theory of search engine technology it wasn't as easy as I had thought to start my own and implementing the technology was an extremely complicated experience. My very first version was powered by <a href="http://lucene.apache.org/">Lucene</a> but as it was powered by Java (and TomCat) I had great difficulty in getting it to work as expected.
I then ran a version of <a href="http://www.mnogosearch.org/">mnoGoSearch</a> which was run as a Perl command line utility and while this one seemed to give me the best results I had resource issues which hampered my efforts. What I soon figured out was why Google has a few hundred thousand servers powering their search engine and after about a week of indexing South African websites I ran out of disk space. With about 8 million records indexed I had used up my 80GB hard drive.
So, in the end Grabble went PHP and while I retained some indexing capabilities from mnoGoSearch I also tapped into Yahoo to help out. At the time Yahoo didn't have a search API so I had to do a lot of hacking to get results returned from Yahoo. In particular, Yahoo provided all the image, news, videos, blogs, sport and forum search results.
While being in awe of Google I also felt that total dominance of only a few players in the market wasn't a good thing. I believed, esoterically at the time, that local search needed to be dominated by a local company. These beliefs I still hold true to heart and I feel that it's critical that competitors exist. There is something very uncomfortable in knowing that one or two companies hold the majority of the world's data and I was convinced that Grabble would be a <em>winner</em>.
Almost three years later and I've been debating what to do with Grabble. For the last two months the site hasn't even been operational (well web search anyway) and while I didn't want to close it down completely I also had to face the reality that Grabble was never going to dominate and I simply did not have the time to maintain it any longer.
Then along came <a href="http://www.4hoursearch.com/" target="_blank">4hoursearch</a> - a website powered by the <a href="http://developer.yahoo.com/search/boss/">Yahoo BOSS</a> search API and running off <a href="http://appengine.google.com/">Google AppEngine</a>. I stumbled across this site by chance and realised that they had released their source code under GPL. Subsequent to this finding I have now moved Grabble onto this Python software and my <strong>final</strong> version of Grabble has now been hatched.
<a href="http://www.grabble.co.za"><img src="/assets/images/uploads/2009/04/picture-52-500x221.png" alt="Final version of Grabble" title="picture-52" width="500" height="221" class="alignnone size-medium wp-image-654" /></a>
What this final version does is allow me to keep the site up for those who still want to use it and at the same time it gives me an opportunity to say goodbye. Running through the Yahoo BOSS API means that I don't have to worry about indexes any longer and living on the Google AppEngine means technology is now taken care of.
I have learnt so much about search through my efforts with Grabble and I hold it very close to my heart. While it never took off it did give me an opportunity to expand my knowledge and experience in an area I felt passionate about and the learning curve I've gone through has certainly helped define where I am today.
