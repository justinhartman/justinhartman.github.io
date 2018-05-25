---
published: true
title: Firefox not free?
wordpress_id: 9
redirect_from: /2006/12/17/fire-fox-not-free/
author_profile: true
toc: false
classes: wide
date: '2006-12-17 15:54:18 +0200'
last_modified_at: '2006-12-17 13:54:18 +0200'
categories:
- debian
tags:
- Debian
- Browsers
- Firefox
- Browsers
comments:
- id: 33
  author: bropa
  author_email: asdf@gmail.com
  author_url: http://insidethepink.blogspot.com
  date: '2007-01-09 17:44:04 +0200'
  last_modified_at: '2007-01-09 15:44:04 +0200'
  content: "Well this makes absolute sense if you think about it for 2 seconds. If
    Mozilla did not trademark the name Firefox it would mean that I could create any
    other browser and also call it Firefox. Imagine all the Firefox competitors releasing
    browser named Firefox. It would be the same as Create releasing a iRiver but call
    them iPod's?\r\n\r\nIt is Debian's strict rules that are to blame here and not
    Mozilla.\r\n\r\n\"Furthermore, Mozilla claims that if Debian runs any patches
    to the version of Firefox included with Debian distros, it has to run them by
    Mozilla first for approval.\" \r\n\r\nThat is because they have quality ensuring
    procedures, anyone can change Firefox but if they allowed you to change and release
    under the Firefox name and  at your own free will, then Microsoft could grab a
    copy, cripple it and then release it on the Internet. Can you see where that would
    lead?"
- id: 55
  author: Justin Hartman
  author_email: justin@hartman.me
  author_url: https://justin.hartman.me
  date: '2007-01-28 11:26:56 +0200'
  last_modified_at: '2007-01-28 09:26:56 +0200'
  content: "There is a huge flame-war going on at the moment on the Debian mailing
    lists about this topic. However what is interesting is the reasoning behind the
    move away from Firefox which I post verbatim below.\r\n\r\nOn the Mozilla side:\r\n\r\n-
    using the Firefox name and logo requires the distributor to use the binaries provided
    by Mozilla\r\n- \"security\" support is provided by shipping new upstream releases,
    with zero help to distributors for backporting\r\n- Debian's permission to use
    the Firefox name (which was given previously) was revoked\r\n- the Firefox artwork
    is non-free\r\n\r\nOn the Debian side:\r\n\r\n- Debian policy requires that all
    packages be built on Debian autobuilders (there are rare exceptions, but they
    are extremely few)\r\n- Debian policy requires not shipping new upstream versions
    in stable releases (that means backporting security fixes)\r\n- Debian requires
    that security updates come from the Debian security team (this creates a problem
    even if Debian acquiesced and released the binaries from mozilla, since the first
    security patch would create an unresolvable conflict)\r\n- Debian requires that
    everything shipped in main be DFSG compliant (the Mozilla Firefox artwork is not)"
- id: 2969
  author: bropa
  author_email: asdf@gmail.com
  author_url: http://insidethepink.blogspot.com
  date: '2007-01-09 17:44:04 +0200'
  last_modified_at: '2007-01-09 22:44:04 +0200'
  content: Well this makes absolute sense if you think about it for 2 seconds. If
    Mozilla did not trademark the name Firefox it would mean that I could create any
    other browser and also call it Firefox. Imagine all the Firefox competitors releasing
    browser named Firefox. It would be the same as Create releasing a iRiver but call
    them iPod&#39;s?<br><br>It is Debian&#39;s strict rules that are to blame here
    and not Mozilla.<br><br>"Furthermore, Mozilla claims that if Debian runs any patches
    to the version of Firefox included with Debian distros, it has to run them by
    Mozilla first for approval." <br><br>That is because they have quality ensuring
    procedures, anyone can change Firefox but if they allowed you to change and release
    under the Firefox name and  at your own free will, then Microsoft could grab a
    copy, cripple it and then release it on the Internet. Can you see where that would
    lead?
- id: 2970
  author: Justin Hartman
  author_email: justin@hartman.me
  author_url: https://justin.hartman.me
  date: '2007-01-28 11:26:56 +0200'
  last_modified_at: '2007-01-28 16:26:56 +0200'
  content: There is a huge flame-war going on at the moment on the Debian mailing
    lists about this topic. However what is interesting is the reasoning behind the
    move away from Firefox which I post verbatim below.<br><br>On the Mozilla side:<br><br>-
    using the Firefox name and logo requires the distributor to use the binaries provided
    by Mozilla<br>- "security" support is provided by shipping new upstream releases,
    with zero help to distributors for backporting<br>- Debian&#39;s permission to
    use the Firefox name (which was given previously) was revoked<br>- the Firefox
    artwork is non-free<br><br>On the Debian side:<br><br>- Debian policy requires
    that all packages be built on Debian autobuilders (there are rare exceptions,
    but they are extremely few)<br>- Debian policy requires not shipping new upstream
    versions in stable releases (that means backporting security fixes)<br>- Debian
    requires that security updates come from the Debian security team (this creates
    a problem even if Debian acquiesced and released the binaries from mozilla, since
    the first security patch would create an unresolvable conflict)<br>- Debian requires
    that everything shipped in main be DFSG compliant (the Mozilla Firefox artwork
    is not)
---
I've been running <a href="http://www.debian.com">Debian</a> on my Apple iBook for about a week now and a recent upgrade to the unstable version of Debian made me realise that <a href="http://www.mozilla.org/firefox/">Firefox</a> has been renamed Iceweasel. This was particularly strange to me and I couldn't understand where this funny name came from suddenly so I decided to do some research.

It turns out that when most people think about the Firefox browser, they think of it as being open source and free but I have found that this is actually not true. While Mozilla Firefox is open source it is not entirely free and it may not even be legally compatible with Debian.

The Firefox logo is trademarked, so Debian doesn't consider it to be Free and will not include it as part of its distribution. Mozilla claims that using the Firefox name without the official branding is a trademark violation.
Furthermore, Mozilla claims that if Debian runs any patches to the version of Firefox included with Debian distros, it has to run them by Mozilla first for approval.

What all this ultimately means is that the Firefox name has been wiped from the face of Debian and is now known as <a href="http://www.gnu.org/software/gnuzilla/">IceWeasel</a>. While using the Firefox name without the Firefox logo is not permissible, changing the name and calling Firefox something else is permissible.
