---
published: true
title: How to swap Control and Command keys on PowerPC
wordpress_id: 18
redirect_from: /2006/12/20/how-to-swap-control-and-command-keys-on-powerpc/
date: '2006-12-20 22:17:14 +0200'
last_modified_at: '2006-12-20 20:17:14 +0200'
permalink: /linux/debian/how-to-swap-control-and-command-keys-on-powerpc.html
categories:
- debian
- linux
- ubuntu
tags:
- Ubuntu
- Debian
- Apple
- linux
comments:
- id: 37
  author: Smaran
  author_email: smarandayal@gmail.com
  author_url: http://smarandayal.com
  date: '2007-01-14 00:51:58 +0200'
  last_modified_at: '2007-01-13 22:51:58 +0200'
  content: You're a genius, you know that?! I've been looking for some instructions
    like these for months now! I'm a Mac user and I hate having to use the control
    key in Ubuntu. I'm so sending a trackback your way. Now I can finally go to sleep
    (almost 5 AM here!).
- id: 40
  author: Justin Hartman
  author_email: justin@hartman.me
  author_url: https://justin.hartman.me
  date: '2007-01-18 03:00:14 +0200'
  last_modified_at: '2007-01-18 01:00:14 +0200'
  content: It's a pleasure. You should have a look at my new Debian Wiki https://justin.hartman.me/linux/
    - most items should work in Ubuntu as well.
- id: 68
  author: Steve
  author_email: splons@mac.com
  author_url: ''
  date: '2007-02-08 21:19:50 +0200'
  last_modified_at: '2007-02-08 19:19:50 +0200'
  content: "This is exactly what I have been looking for! Thank you.\r\n\r\nOne question
    - keyboard shortcuts based on Ctrl-blah no longer seem to work in Firefox on my
    Ubuntu installation. They work everywhere else (Desktop, gedit, terminal, etc).\r\n\r\nAny
    idea why it does not work in Firefox?"
- id: 72
  author: Justin Hartman
  author_email: justin@hartman.me
  author_url: https://justin.hartman.me
  date: '2007-02-12 16:49:00 +0200'
  last_modified_at: '2007-02-12 14:49:00 +0200'
  content: "Hi Steve\r\n\r\nSorry mate. No idea why it doesn't work. It should work
    as this config works on both my ibook G4 and mac mini. Seems strange that you
    should have a problem."
- id: 73
  author: Steve
  author_email: splons@mac.com
  author_url: ''
  date: '2007-02-12 20:07:08 +0200'
  last_modified_at: '2007-02-12 18:07:08 +0200'
  content: "I just did an install of Ubuntu on my MacBook and used the first set of
    instructions - worked great, no problem with Firefox this time.\r\n\r\nThe first
    time was on my G5 tower and I used the second set of instructions."
- id: 2525
  author: Smaran
  author_email: ''
  author_url: http://smarandayal.com
  date: '2007-01-14 00:51:58 +0200'
  last_modified_at: '2007-01-14 05:51:58 +0200'
  content: You&#39;re a genius, you know that?! I&#39;ve been looking for some instructions
    like these for months now! I&#39;m a Mac user and I hate having to use the control
    key in Ubuntu. I&#39;m so sending a trackback your way. Now I can finally go to
    sleep (almost 5 AM here!).
- id: 2526
  author: Justin Hartman
  author_email: ''
  author_url: https://justin.hartman.me
  date: '2007-01-18 03:00:14 +0200'
  last_modified_at: '2007-01-18 08:00:14 +0200'
  content: It&#39;s a pleasure. You should have a look at my new Debian Wiki <a href="https://justin.hartman.me/linux/">https://justin.hartman.me/linux/</a>
    - most items should work in Ubuntu as well.
- id: 2527
  author: Steve
  author_email: ''
  author_url: ''
  date: '2007-02-08 21:19:50 +0200'
  last_modified_at: '2007-02-09 02:19:50 +0200'
  content: This is exactly what I have been looking for! Thank you.<br><br>One question
    - keyboard shortcuts based on Ctrl-blah no longer seem to work in Firefox on my
    Ubuntu installation. They work everywhere else (Desktop, gedit, terminal, etc).<br><br>Any
    idea why it does not work in Firefox?
- id: 2528
  author: Justin Hartman
  author_email: ''
  author_url: https://justin.hartman.me
  date: '2007-02-12 16:49:00 +0200'
  last_modified_at: '2007-02-12 21:49:00 +0200'
  content: Hi Steve<br><br>Sorry mate. No idea why it doesn&#39;t work. It should
    work as this config works on both my ibook G4 and mac mini. Seems strange that
    you should have a problem.
- id: 2529
  author: Steve
  author_email: ''
  author_url: ''
  date: '2007-02-12 20:07:08 +0200'
  last_modified_at: '2007-02-13 01:07:08 +0200'
  content: I just did an install of Ubuntu on my MacBook and used the first set of
    instructions - worked great, no problem with Firefox this time.<br><br>The first
    time was on my G5 tower and I used the second set of instructions.
---
As a previous Apple OS X user I find that having to use the control key on my keyboard versus the Apple command key a real pain in the backside. Most Windows users don't have a problem with this as the transition from Windows to Linux is easy with regards to using the control key. I've searched and asked and low and behold nearly a month later I now know how to swap the two around. 

In Ubuntu and Debian it's not as simple as configuring a short-cut or key-map and it requires a little bug-fix to get it working just as I'm used to it coming from OS X. Here's a little step-by-step HOW-TO on how to achieve this on both an iBook G4 keyboard as well as the standard Apple USB keyboard.

## iBook G4 Keyboard 
I guess this will work on most Apple notebooks but YMMV.
{: .notice--warning}

Create a file in your home directory called `.Xmodmap` by following these steps.

In a terminal window type:
```bash
$ cd $home
$ nano .Xmodmap
```
In this new file add these two lines:
```bash
keycode 115 = Control_L
add Control = Control_L
```
From your terminal window:
```bash
$ xmodmap ~/.Xmodmap
```

Restart your computer and the next time you log in to Ubuntu or Debian it will prompt you to load your `.Xmodmap` file. Select it from the right side of the window and move it to the left and then load it. Once done your left Apple command key is now a `ctrl` key. 

## Standard Apple USB Keyboard
Follow the exact same steps as above but instead of inserting two lines in the `.Xmodmap` file, insert the following:
```bash
remove Control = Control_L
remove Mod4 = Meta_L
keycode 0x25 = Meta_L
keycode 0x73 = Control_L
add Control = Control_L Control_L
add Mod4 = Meta_L
```

The example above will make both your Apple command keys control keys, disabling your control key completely and adds a bit more functionality for the larger Apple keyboards.

For both of these instructions you can also go into your keyboard shortcuts in gnome and change `Alt+Tab` application switching to `Ctrl+Tab` to allow you to switch between applications using your `Command+Tab` keys.
