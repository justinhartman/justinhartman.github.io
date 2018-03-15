---
title: Introducing the Diceware Password Generator
header:
  overlay_image: /assets/images/posts/diceware-password-generator-1200.jpg
  overlay_filter: rgba(0, 0, 0, 0.5)
  caption: "Photo by [**Pexels**](https://www.pexels.com/photo/6-pieces-of-black-and-white-dice-37534/)"
  teaser: '/assets/images/posts/diceware-password-generator_580x300.jpg'
image: '/assets/images/posts/diceware-password-generator_580x300.jpg'
permalink: "/python/introducing-the-diceware-password-generator.html"
published: true
date: 2018-03-15 22:22:00 +02:00
last_modified_at: 2018-03-15 22:22:00 +02:00
excerpt: The Dicewear Password Generator is open-source software I wrote in Python that uses a world list and "dice" to output an easy to remember, yet highly secure password based on a sequence of words.
description: The Dicewear Password Generator is open-source software I wrote in Python that uses a world list and “dice” to output an easy to remember, yet highly secure password based on a sequence of words.
categories:
- python
tags:
- python
- passwords
- password generator
- secure passwords
- security
- online security
- free software
toc: false
class: wide
---
I have a problem with passwords. I take them very seriously and for at least the last 10 years I have been using some type of password manager to manage all my passwords and other critical, personal information.

The problem with this scenario is that for years I have been using password generators, built within the app, to secure my online logins. Why is this a problem? Well... it isn't _per se_; the main issue is the **Master Password**, that is the one password to rule them all, well, mine is rather easy to break.

I've often debated with myself around how to solve this problem. To remember a password like `:o0{n1$z'4yQ_?2RwW` is simply not going to happen. The thing is, in order to be secure you need a password to remember so as to only have it in your head and no physical evidence of it lying around. 

![Diceware Password Generator][diceware_image]

And here is where the _[Dicewear Password Generator (DPG)][dpg]_ comes into play. The DPG is a piece of open-source software I wrote in `Python` and it uses a world list and _"dice"_ to output an easy to remember password based on a sequence of words like `boots-imbecile-nextdoor-espresso-cosmetics-remote`. While this is a long password, it certainly can be memorised - and quickly.

Diceware is a methodology for picking passphrases that uses dice to select words at random from a special list called the Diceware Word List. Each word in the list is preceded by a five digit number. All the digits are between one and six, allowing you to use the outcomes of five dice rolls to select a word from the list.

Using Dicewear as a methodology ensures that not only is a password like `mumbo-giver-alarm-lived-gig-wages-exit` easy to memorise, it is over **100 times**<sup>[[1]](#footnote)</sup> more secure than traditional passwords such as this `%u}+6:~TY/(8uR[/vB`. 

The [Diceware Password Generator][dpg] was made to simplify the creation of these easy, yet very difficult to hack passwords on the fly. 

## Installation and Usage
There is a [dedicated website landing page][dpg] for the [Diceware Password Generator][dpg]. You can head on over to that page to read more about:
- How to install the software.
- How to download the word lists.
- How to use the software.
- Various usage examples for each of the five supplied word lists.
- The licensing of the software.
- Credits to the people who made this possible.
- Interesting links about Diceware.

I recommend visiting the website by clicking the button below but if you just want to start using the software then click the Download button. The `README.md` file contains everything you need to know about using the software.

[Visit Website][dpg]{: .btn .btn--danger .btn--large}
[Download Software][download]{: .btn .btn--info .btn--large}

--- 

<a name="footnote"><sup>[1]</sup></a> I don't actually know if this is accurate but it sounds impressive. Whether accurate or not, the DPG creates passwords that are extremely secure all thanks to entropy.
{: .notice--danger}

[diceware_image]: /assets/images/posts/diceware-password-generator.png
[dpg]: https://justin.hartman.me/diceware-password-generator/
[download]: https://github.com/justinhartman/diceware-password-generator/archive/master.zip
