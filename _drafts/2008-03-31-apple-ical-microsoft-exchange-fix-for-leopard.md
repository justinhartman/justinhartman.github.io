---
published: true
title: Apple iCal / Microsoft Exchange fix for Leopard
wordpress_id: 234
redirect_from: /2008/03/31/apple-ical-microsoft-exchange-fix-for-leopard/
date: '2008-03-31 09:01:06 +0200'
last_modified_at: '2008-03-31 07:01:06 +0200'
categories:
- life
tags:
- Microsoft
- Apple
- Projects
- Leopard
- iCal
- Bugs
- iCalFix
- Hacks
- Exchange
comments:
- id: 1535
  author: Dr. Strangeluv
  author_email: drstrangeluv@aol.com
  author_url: ''
  date: '2008-04-08 17:31:28 +0200'
  last_modified_at: '2008-04-08 15:31:28 +0200'
  content: "Hi Justin:\r\n\r\nI have not gotten a chance to try this since I don't\r\nuse
    Exchange (or iCal much for that matter).  But, wouldn't another possible solution
    be to create new zoneinfo database entries for MS Exchange time zones?  Just curious.
    \ I've spent some time with them, but I don't really consider myself an expert.
    \ I would not be surprised if this hasn't already been done."
- id: 1536
  author: Andy Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-04-08 18:21:52 +0200'
  last_modified_at: '2008-04-08 16:21:52 +0200'
  content: "I did something very similar using just a single AppleScript. I call it
    from the Script menu. It can be called from a Mail Rule as well. I was getting
    similar malformed time zone info from a Corporate server. The problem seems to
    have fixed itself but the script is available if you're interested in another
    way to do it.\r\n\r\nAs you've stated the TZ info is unique and the shell part
    of the script will need to be corrected for individual use.\r\n\r\nLet me know
    if you're interested.\r\n\r\nAndy"
- id: 1539
  author: Justin Hartman
  author_email: justin@hartman.me
  author_url: https://justin.hartman.me
  date: '2008-04-09 00:14:25 +0200'
  last_modified_at: '2008-04-08 22:14:25 +0200'
  content: "Dr. Strangeluv - I've tried this before to no avail. In fact trying to
    work with different zone files, or even editing the existing ones, has cause some
    major corruptions with iCal and I wouldn't recommend this route. My fix keeps
    iCal and Mail completely free from any editing so you can upgrade easily and even
    the data is safe from corruption.\r\n\r\nAndy - please send it onto me justin
    (at) hartmanlife.com - I'd love to see what you've done and test it on my side.
    If we can simplify this process then it would be advantageous to everyone."
- id: 1644
  author: Dion Forster
  author_email: digitaldion@gmail.com
  author_url: http://www.spirituality.org.za/blogger.html
  date: '2008-04-12 11:02:34 +0200'
  last_modified_at: '2008-04-12 09:02:34 +0200'
  content: "Hi Justin,\r\n\r\nThanks for this great post!  I am also a Mac user (Macbook
    Pro) in a Windows Exchange environment.  I have just joined the company where
    I am now and they are reluctant to allow me to use my Mac on the MS Exchange server.
    \ I would LOVE to be able to continue to use my Mac (Mail, iCal, and browsing
    the Web via a proxy - and then using a VPN connection via 3G to access the Exchange
    server when I am out and about).\r\n\r\nAre you able to point me to any user guides
    that I could use to set myself up for this?  I would be truly grateful!\r\n\r\nDion
    \r\n(South African blogger! http://www.spirituality.org.za/blogger.html)"
- id: 1686
  author: Andy Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-04-16 20:01:41 +0200'
  last_modified_at: '2008-04-16 18:01:41 +0200'
  content: "Justin,\r\n\r\nI've reworked the script a bit more and I think I've got
    it to where a simple property value change for what iCal expects from your system
    is all that's needed for the script to work. If I can figure out where in the
    OS the time zone is stored then I think I can make the script work without any
    adjustments for anyone. I email'd the script to you.\r\n\r\nAndy"
- id: 1722
  author: Ryan Hunt
  author_email: icalfix@ryanhunt.net
  author_url: http://ryanhunt.net/
  date: '2008-04-22 01:14:27 +0200'
  last_modified_at: '2008-04-21 23:14:27 +0200'
  content: "Hi there, I work in London and deal a lot with those in West Coast US,
    and those in Tallinn (Helsinki is the closest timezone). I found these regex rules
    work for me:\r\n\r\n#London - Ryan Hunt\r\nperl -pi -e 's/\\\"Greenwich\\ Mean\\
    Time\\ \\:\\ Dublin\\,\\ Edinburgh\\,\\ Lisbon\\,\\s/Europe\\//g' $ICSFILE\r\nperl
    -pi -e 's/\\s\\sLondon\\\"/London/g' $ICSFILE\r\nperl -pi -e 's/Greenwich\\sMean\\sTime\\s\\:\\sDublin\\,\\sEdinburgh\\,\\sLisbon\\,\\sLondon/Europe\\/London/g'
    $ICSFILE\r\n \r\n#West Coast USA - Ryan Hunt\r\nperl -pi -e 's/\\(GMT\\-08\\.00\\)\\
    Pacific\\ Time\\ \\(US\\ \\&amp;\\ Canada\\)\\/Tijuana/US\\/Pacific/g' $ICSFILE\r\n\r\n#Tallinn
    - Ryan Hunt\r\nperl -pi -e 's/Helsinki\\\\\\,\\ Kyiv\\\\\\,\\ Riga\\\\\\,\\ Sofia\\\\\\,\\
    Tallinn\\\\\\,\\ Vilnius/Europe\\/Helsinki/g' $ICSFILE\r\nperl -pi -e 's/Helsinki\\,\\
    Kyiv\\,\\ Riga\\,\\ Sofia\\,\\ Tallinn\\,\\ Vilnius/Europe\\/Helsinki/g' $ICSFILE"
- id: 1724
  author: Andy Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-04-22 02:19:45 +0200'
  last_modified_at: '2008-04-22 00:19:45 +0200'
  content: "Ryan,\r\nI've got a one liner in my AppleScript that should grab the Exchange
    TZID and put it to a variable. Then all you have to do is set the location of
    the Exchange server in a format iCal expects. The line is the following.\r\n\r\nset
    exchange_tzid to do shell script \"grep -o ^TZID.*$ \" &amp; tPath &amp; \" |
    sed -e 's|TZID:\\\\(.*\\\\)|\\\\1|g'\"\r\n\r\nI think that should grab the Exchange
    TZID no matter what it is."
- id: 1727
  author: Ryan Hunt
  author_email: icalfix@ryanhunt.net
  author_url: http://ryanhunt.net/
  date: '2008-04-23 11:16:18 +0200'
  last_modified_at: '2008-04-23 09:16:18 +0200'
  content: OK, I've figured out what this script is doing, it will modify the attachment
    and then open the modified Attachment in iCal. Is there anyway to modify the attachment
    and then actually modify the message on the server with the new invite? I.e if
    I forget about this meeting and I double click again (later) it gives me the wrong
    time.
- id: 1728
  author: Andy_Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-04-23 19:34:29 +0200'
  last_modified_at: '2008-04-23 17:34:29 +0200'
  content: Ryan, you could probably just run the AppleScript from the System AppleScript
    menu on the original email invite. If that doesn't work <a href="http://thefragens.com/blog/?p=484"
    rel="nofollow">I may have solution</a>  that will.
- id: 1733
  author: paul tomes
  author_email: paul.tomes@pitch.co.za
  author_url: ''
  date: '2008-04-24 18:02:23 +0200'
  last_modified_at: '2008-04-24 16:02:23 +0200'
  content: Justin ... good afternoon.  Many thanks for posting the fix.  I have just
    downloaded it and followed all the steps ... I am Cape Town based so felt I didn't
    need to worry about time zone ... but I took an existing calender request sitting
    in my inbox which i hadn't opened and double clicked it ... the calendar entry
    was still 2 hours later ... I then changed my mail preferences to automatically
    add calendar entries and then forwarded the meeting request to myself.  when the
    mail came through it entered it ... but 2 hours late! ... could you tell me what
    i may have done wrong? ... running I-mac OSX ver 10.5 ... many thanks  Paul Tomes
- id: 1735
  author: Dave Shrein
  author_email: daveshrein@gmail.com
  author_url: ''
  date: '2008-04-24 22:50:02 +0200'
  last_modified_at: '2008-04-24 20:50:02 +0200'
  content: "Ryan,\r\n\r\nI could not get the instructions to work... It was a bit
    over my head... would you be able to help me?\r\n\r\nhttp://www.daves-office.com/documents/icalerror.zip\r\n\r\nI
    posted the two events in there labeled... any help would be much appreciate it!\r\n\r\nDave"
- id: 1738
  author: Nicola Aspinall
  author_email: nicjasp@people.net.au
  author_url: ''
  date: '2008-04-25 06:53:05 +0200'
  last_modified_at: '2008-04-25 04:53:05 +0200'
  content: "Hi Justin, \r\n\r\nThanks for the really helpful post. I am a home mac
    user and at work we use Exchange so when I have it all running properly this fix
    will be great for me. I am a recent mac user and not very technical when it comes
    to scrips so I am a little confused how to customize the timezone for my country.\r\n\r\nI
    have opened an ics file in TextEdit and though it does not note GMT+ whatever,
    here is what I have:\r\n\r\nDTSTART;TZID=E. Australia Standard Time:20080428T170000\r\n\r\nIn
    iCal it would be:\r\nDTSTART;TZID=Australia/Sydney:20080428T170000\r\n\r\nCa you
    please assist in advising what I am supposed to modify the fix_timezone.sh file
    with?\r\n\r\nCheers."
- id: 1750
  author: Mike
  author_email: mike@cerebra.co.za
  author_url: http://www.mikestopforth.com
  date: '2008-05-05 11:02:10 +0200'
  last_modified_at: '2008-05-05 09:02:10 +0200'
  content: I.  Love.  You.  I really do.
- id: 1751
  author: Steve
  author_email: stleaman@cisco.com
  author_url: ''
  date: '2008-05-05 15:50:01 +0200'
  last_modified_at: '2008-05-05 13:50:01 +0200'
  content: "Justin, thanks for the post, the only problem i have is when i create
    a local ical to check the format i don't get any timezone info:\r\n\r\nBEGIN:VCALENDAR\r\n\r\nX-WR-CALNAME:test2\r\n\r\nPRODID:-//Apple
    Inc.//iCal 3.0//EN\r\n\r\nCALSCALE:GREGORIAN\r\n\r\nVERSION:2.0\r\n\r\nMETHOD:PUBLISH\r\n\r\nEND:VCALENDAR\r\n\r\nwhat
    am i doing wrong?  I'm GMT+4 in Dubai, I'm guessing the key may be muscat/oman
    based on date and time, can you give me any pointers?\r\n\r\nMany thanks,\r\n\r\nSteve."
- id: 1752
  author: Steve
  author_email: stleaman@cisco.com
  author_url: ''
  date: '2008-05-05 16:08:06 +0200'
  last_modified_at: '2008-05-05 14:08:06 +0200'
  content: "Justin,\r\n\r\nFigured it out - top right hand corner of my iCal displays
    \"Asia/Muscat\", exchange server is only sending through \"GMT +0400 (Standard)
    / GMT +0400 (Daylight)\" rather than any location details.\r\n\r\nSo modified
    the second line of the script to:\r\nperl -pi -e 's/GMT\\ \\+0400\\ \\(Standard\\)\\
    \\/\\ GMT\\ \\+0400\\ \\(Daylight\\)/Asia\\/Muscat/g' $ICSFILE\r\n\r\nWorks a
    treat!  thanks for the original post, hope this might help some others.\r\n\r\nSteve."
- id: 1828
  author: Robert Zomer
  author_email: rzomer@icimod.org
  author_url: ''
  date: '2008-06-10 07:40:31 +0200'
  last_modified_at: '2008-06-10 05:40:31 +0200'
  content: "Justin... Hi... sorry, haven't been able to figure out how to modify the
    script... \r\n\r\nI'm in Katmandu   GMT +5:45\r\n\r\nthis is the exchange ics:\r\n\r\nPRODID:Microsoft
    Exchange Server 2007\r\nVERSION:2.0\r\nBEGIN:VTIMEZONE\r\nTZID:Nepal Standard
    Time\r\nBEGIN:STANDARD\r\nDTSTART:16010101T000000\r\nTZOFFSETFROM:+0545\r\nTZOFFSETTO:+0545\r\nEND:STANDARD\r\nBEGIN:DAYLIGHT\r\nDTSTART:16010101T000000\r\nTZOFFSETFROM:+0545\r\nTZOFFSETTO:+0545\r\n
    \r\nDTSTART;TZID=Nepal Standard Time:20080613T110000\r\nDTEND;TZID=Nepal Standard
    Time:20080613T120000\r\n\r\n\r\nThanks... Bob"
- id: 1961
  author: egxis
  author_email: eg@xantiumis.co.za
  author_url: ''
  date: '2008-07-22 12:01:46 +0200'
  last_modified_at: '2008-07-22 10:01:46 +0200'
  content: "I have provided some basic instructions for those not-so-technical folks
    on installing Andy's fix:\r\n\r\n1. Delete the original event from your iCal and
    don't notify the sender.\r\n\r\n2. Save the following file [ http://thefragens.com/pub/MailExchange2iCal-TZ-fix.scpt
    ]  to the following location:\r\n   yourname\\Library\\Mail\\\r\n\r\n3. Edit the
    file ~\\Library\\Mail\\MailExchange2iCal-TZ-fix.scpt and adjust the value of the
    property field, to your appropriate timezone, in Justin's example that would be:\r\n
    \  property ical_tzid : \"Africa/Johannesburg\"\r\n\r\n4. Save the MailExchange2iCal-TZ-fix.scpt
    file\r\n\r\n5. Create a new Mail rule\r\n   a. Mail -> Preferences -> Rules ->
    Add Rule\r\n      i. Description \r\n      ii. If             \r\n      iii.  Perform
    \    \r\n   b. Click \"OK\" and then \"Apply\"\r\n\r\n6. Open the invite which
    was originally sent to you, check the time in iCal, and accept if it's correct.\r\n\r\n7.
    Done."
- id: 1962
  author: egxis
  author_email: eg@xantiumis.co.za
  author_url: ''
  date: '2008-07-22 12:07:14 +0200'
  last_modified_at: '2008-07-22 10:07:14 +0200'
  content: "Hmmm, your blog software filtered out some of my comments.\r\n\r\nStep
    5, fixed:\r\n5. Create a new Mail rule\r\n   a. Mail -> Preferences -> Rules ->
    Add Rule\r\n      i. Description \"Fix Microsoft Invites\"\r\n      ii. If \"Any\"
    \ \"Attachment Name\"  \"ends with\"  \".ics\"\r\n      iii.  Perform \"Run AppleScript\"
    \ \"~\\Library\\Mail\\MailExchange2iCal-TZ-fix.scpt\"\r\n   b. Click \"OK\" and
    then \"Apply\""
- id: 1990
  author: Dan
  author_email: dan@addison-clark.com
  author_url: ''
  date: '2008-08-05 02:54:09 +0200'
  last_modified_at: '2008-08-05 00:54:09 +0200'
  content: "Hi Justin,\r\n\r\nThanks for the helpful info. I'm going to need a little
    help with the timezone data. Here's what I have:\r\n\r\nExchange data received:
    \r\nDTSTART;TZID=\"(GMT-07.00) Arizona\":20080827T090000\r\n\r\nMy iCal data:
    \r\nDTSTART;TZID=America/Phoenix:20080828T180000\r\n\r\nI appreciate it!!"
- id: 1991
  author: Dan
  author_email: d@nnypeters.com
  author_url: ''
  date: '2008-08-05 05:38:11 +0200'
  last_modified_at: '2008-08-05 03:38:11 +0200'
  content: "Totally awesome - I've just used the instruction in the previous posts
    and it works a treat. No longer will I be 2 hours early to client meetings!\r\n\r\nThanks
    heaps.\r\n\r\nDan."
- id: 1993
  author: Dan
  author_email: d@nnypeters.com
  author_url: ''
  date: '2008-08-06 02:39:48 +0200'
  last_modified_at: '2008-08-06 00:39:48 +0200'
  content: "ok - I used the script file in the post 5 above this. But It actually
    doesn't seem t work properly for new emails. It does work but only when I tell
    mail to Apply the rules to that message after it has arrived.\r\n\r\nSo Now I
    am trying to use Justin's original fix - but the reg-ex part is not my game -
    I need help :)\r\n\r\nDTSTART;TZID=\"(GMT+10.00) Brisbane/East Australia\":20080812T120000\r\n\r\nThat
    is my servers timezone.\r\nCheers."
- id: 1994
  author: Andy_Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-08-06 04:55:58 +0200'
  last_modified_at: '2008-08-06 02:55:58 +0200'
  content: "In deference to Justin, I'm sure some of these comments are becoming quite
    confusing. The changing references between his scripts and mine. It might be better
    to move the discussion of my script over to <a href=\"http://thefragens.com/blog/2008/04/ical-exchange-time-zone-fix/\"
    rel=\"nofollow\">my script's page</a>.\r\n\r\nDan, I'm happy to try and work with
    you or anyone else in getting my script to function as you'd expect it to."
- id: 1995
  author: Andy_Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-08-06 05:27:12 +0200'
  last_modified_at: '2008-08-06 03:27:12 +0200'
  content: Dan, I may have found a fix for my script not working properly for new
    emails.
- id: 2187
  author: Dr. Strangeluv
  author_email: ''
  author_url: ''
  date: '2008-04-08 17:31:28 +0200'
  last_modified_at: '2008-04-08 22:31:28 +0200'
  content: Hi Justin:<br><br>I have not gotten a chance to try this since I don&#39;t<br>use
    Exchange (or iCal much for that matter).  But, wouldn&#39;t another possible solution
    be to create new zoneinfo database entries for MS Exchange time zones?  Just curious.  I&#39;ve
    spent some time with them, but I don&#39;t really consider myself an expert.  I
    would not be surprised if this hasn&#39;t already been done.
- id: 2188
  author: Andy Fragen
  author_email: ''
  author_url: http://thefragens.com/blog/
  date: '2008-04-08 18:21:52 +0200'
  last_modified_at: '2008-04-08 23:21:52 +0200'
  content: I did something very similar using just a single AppleScript. I call it
    from the Script menu. It can be called from a Mail Rule as well. I was getting
    similar malformed time zone info from a Corporate server. The problem seems to
    have fixed itself but the script is available if you&#39;re interested in another
    way to do it.<br><br>As you&#39;ve stated the TZ info is unique and the shell
    part of the script will need to be corrected for individual use.<br><br>Let me
    know if you&#39;re interested.<br><br>Andy
- id: 2189
  author: Justin Hartman
  author_email: ''
  author_url: https://justin.hartman.me
  date: '2008-04-09 00:14:25 +0200'
  last_modified_at: '2008-04-09 05:14:25 +0200'
  content: Dr. Strangeluv - I&#39;ve tried this before to no avail. In fact trying
    to work with different zone files, or even editing the existing ones, has cause
    some major corruptions with iCal and I wouldn&#39;t recommend this route. My fix
    keeps iCal and Mail completely free from any editing so you can upgrade easily
    and even the data is safe from corruption.<br><br>Andy - please send it onto me
    justin (at) <a href="http://hartmanlife.com">hartmanlife.com</a> - I&#39;d love
    to see what you&#39;ve done and test it on my side. If we can simplify this process
    then it would be advantageous to everyone.
- id: 2190
  author: Dion Forster
  author_email: ''
  author_url: http://www.spirituality.org.za/blogger.html
  date: '2008-04-12 11:02:34 +0200'
  last_modified_at: '2008-04-12 16:02:34 +0200'
  content: Hi Justin,<br><br>Thanks for this great post!  I am also a Mac user (Macbook
    Pro) in a Windows Exchange environment.  I have just joined the company where
    I am now and they are reluctant to allow me to use my Mac on the MS Exchange server.  I
    would LOVE to be able to continue to use my Mac (Mail, iCal, and browsing the
    Web via a proxy - and then using a VPN connection via 3G to access the Exchange
    server when I am out and about).<br><br>Are you able to point me to any user guides
    that I could use to set myself up for this?  I would be truly grateful!<br><br>Dion
    <br>(South African blogger! <a href="http://www.spirituality.org.za/blogger.html">http://www.spirituality.org.za/blogger.html</a>)
- id: 2191
  author: Andy Fragen
  author_email: ''
  author_url: http://thefragens.com/blog/
  date: '2008-04-16 20:01:41 +0200'
  last_modified_at: '2008-04-17 01:01:41 +0200'
  content: Justin,<br><br>I&#39;ve reworked the script a bit more and I think I&#39;ve
    got it to where a simple property value change for what iCal expects from your
    system is all that&#39;s needed for the script to work. If I can figure out where
    in the OS the time zone is stored then I think I can make the script work without
    any adjustments for anyone. I email&#39;d the script to you.<br><br>Andy
- id: 2192
  author: Ryan Hunt
  author_email: ''
  author_url: http://ryanhunt.net/
  date: '2008-04-22 01:14:27 +0200'
  last_modified_at: '2008-04-22 06:14:27 +0200'
  content: 'Hi there, I work in London and deal a lot with those in West Coast US,
    and those in Tallinn (Helsinki is the closest timezone). I found these regex rules
    work for me:<br><br>#London - Ryan Hunt<br>perl -pi -e &#39;s/"Greenwich Mean
    Time : Dublin, Edinburgh, Lisbon,s/Europe//g&#39; $ICSFILE<br>perl -pi -e &#39;s/ssLondon"/London/g&#39;
    $ICSFILE<br>perl -pi -e &#39;s/GreenwichsMeansTimes:sDublin,sEdinburgh,sLisbon,sLondon/Europe/London/g&#39;
    $ICSFILE<br> <br>#West Coast USA - Ryan Hunt<br>perl -pi -e &#39;s/(GMT-08.00)
    Pacific Time (US &amp; Canada)/Tijuana/US/Pacific/g&#39; $ICSFILE<br><br>#Tallinn
    - Ryan Hunt<br>perl -pi -e &#39;s/Helsinki\, Kyiv\, Riga\, Sofia\, Tallinn\, Vilnius/Europe/Helsinki/g&#39;
    $ICSFILE<br>perl -pi -e &#39;s/Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius/Europe/Helsinki/g&#39;
    $ICSFILE'
- id: 2193
  author: Andy Fragen
  author_email: ''
  author_url: http://thefragens.com/blog/
  date: '2008-04-22 02:19:45 +0200'
  last_modified_at: '2008-04-22 07:19:45 +0200'
  content: Ryan,<br>I&#39;ve got a one liner in my AppleScript that should grab the
    Exchange TZID and put it to a variable. Then all you have to do is set the location
    of the Exchange server in a format iCal expects. The line is the following.<br><br>set
    exchange_tzid to do shell script "grep -o ^TZID.*$ " &amp; tPath &amp; " | sed
    -e &#39;s|TZID:\(.*\)|\1|g&#39;"<br><br>I think that should grab the Exchange
    TZID no matter what it is.
- id: 2194
  author: Ryan Hunt
  author_email: ''
  author_url: http://ryanhunt.net/
  date: '2008-04-23 11:16:18 +0200'
  last_modified_at: '2008-04-23 16:16:18 +0200'
  content: OK, I&#39;ve figured out what this script is doing, it will modify the
    attachment and then open the modified Attachment in iCal. Is there anyway to modify
    the attachment and then actually modify the message on the server with the new
    invite? I.e if I forget about this meeting and I double click again (later) it
    gives me the wrong time.
- id: 2195
  author: Andy_Fragen
  author_email: ''
  author_url: http://thefragens.com/blog/
  date: '2008-04-23 19:34:29 +0200'
  last_modified_at: '2008-04-24 00:34:29 +0200'
  content: Ryan, you could probably just run the AppleScript from the System AppleScript
    menu on the original email invite. If that doesn&#39;t work <a href="http://thefragens.com/blog/?p=484"
    rel="nofollow">I may have solution</a>  that will.
- id: 2196
  author: paul tomes
  author_email: ''
  author_url: ''
  date: '2008-04-24 18:02:23 +0200'
  last_modified_at: '2008-04-24 23:02:23 +0200'
  content: Justin ... good afternoon.  Many thanks for posting the fix.  I have just
    downloaded it and followed all the steps ... I am Cape Town based so felt I didn&#39;t
    need to worry about time zone ... but I took an existing calender request sitting
    in my inbox which i hadn&#39;t opened and double clicked it ... the calendar entry
    was still 2 hours later ... I then changed my mail preferences to automatically
    add calendar entries and then forwarded the meeting request to myself.  when the
    mail came through it entered it ... but 2 hours late! ... could you tell me what
    i may have done wrong? ... running I-mac OSX ver 10.5 ... many thanks  Paul Tomes
- id: 2197
  author: Dave Shrein
  author_email: ''
  author_url: ''
  date: '2008-04-24 22:50:02 +0200'
  last_modified_at: '2008-04-25 03:50:02 +0200'
  content: Ryan,<br><br>I could not get the instructions to work... It was a bit over
    my head... would you be able to help me?<br><br><a href="http://www.daves-office.com/documents/icalerror.zip">http://www.daves-office.com/documents/icalerror...</a><br><br>I
    posted the two events in there labeled... any help would be much appreciate it!<br><br>Dave
- id: 2198
  author: Nicola Aspinall
  author_email: ''
  author_url: ''
  date: '2008-04-25 06:53:05 +0200'
  last_modified_at: '2008-04-25 11:53:05 +0200'
  content: Hi Justin, <br><br>Thanks for the really helpful post. I am a home mac
    user and at work we use Exchange so when I have it all running properly this fix
    will be great for me. I am a recent mac user and not very technical when it comes
    to scrips so I am a little confused how to customize the timezone for my country.<br><br>I
    have opened an ics file in TextEdit and though it does not note GMT+ whatever,
    here is what I have:<br><br>DTSTART;TZID=E. Australia Standard Time:20080428T170000<br><br>In
    iCal it would be:<br>DTSTART;TZID=Australia/Sydney:20080428T170000<br><br>Ca you
    please assist in advising what I am supposed to modify the fix_timezone.sh file
    with?<br><br>Cheers.
- id: 2199
  author: Mike
  author_email: ''
  author_url: http://www.mikestopforth.com
  date: '2008-05-05 11:02:10 +0200'
  last_modified_at: '2008-05-05 16:02:10 +0200'
  content: I.  Love.  You.  I really do.
- id: 2200
  author: Steve
  author_email: ''
  author_url: ''
  date: '2008-05-05 15:50:01 +0200'
  last_modified_at: '2008-05-05 20:50:01 +0200'
  content: Justin, thanks for the post, the only problem i have is when i create a
    local ical to check the format i don&#39;t get any timezone info:<br><br>BEGIN:VCALENDAR<br><br>X-WR-CALNAME:test2<br><br>PRODID:-//Apple
    Inc.//iCal 3.0//EN<br><br>CALSCALE:GREGORIAN<br><br>VERSION:2.0<br><br>METHOD:PUBLISH<br><br>END:VCALENDAR<br><br>what
    am i doing wrong?  I&#39;m GMT+4 in Dubai, I&#39;m guessing the key may be muscat/oman
    based on date and time, can you give me any pointers?<br><br>Many thanks,<br><br>Steve.
- id: 2201
  author: Steve
  author_email: ''
  author_url: ''
  date: '2008-05-05 16:08:06 +0200'
  last_modified_at: '2008-05-05 21:08:06 +0200'
  content: Justin,<br><br>Figured it out - top right hand corner of my iCal displays
    "Asia/Muscat", exchange server is only sending through "GMT +0400 (Standard) /
    GMT +0400 (Daylight)" rather than any location details.<br><br>So modified the
    second line of the script to:<br>perl -pi -e &#39;s/GMT +0400 (Standard) / GMT
    +0400 (Daylight)/Asia/Muscat/g&#39; $ICSFILE<br><br>Works a treat!  thanks for
    the original post, hope this might help some others.<br><br>Steve.
- id: 2202
  author: Robert Zomer
  author_email: ''
  author_url: ''
  date: '2008-06-10 07:40:31 +0200'
  last_modified_at: '2008-06-10 12:40:31 +0200'
  content: Justin... Hi... sorry, haven&#39;t been able to figure out how to modify
    the script... <br><br>I&#39;m in Katmandu   GMT +5:45<br><br>this is the exchange
    ics:<br><br>PRODID:Microsoft Exchange Server 2007<br>VERSION:2.0<br>BEGIN:VTIMEZONE<br>TZID:Nepal
    Standard Time<br>BEGIN:STANDARD<br>DTSTART:16010101T000000<br>TZOFFSETFROM:+0545<br>TZOFFSETTO:+0545<br>END:STANDARD<br>BEGIN:DAYLIGHT<br>DTSTART:16010101T000000<br>TZOFFSETFROM:+0545<br>TZOFFSETTO:+0545<br>
    <br>DTSTART;TZID=Nepal Standard Time:20080613T110000<br>DTEND;TZID=Nepal Standard
    Time:20080613T120000<br><br><br>Thanks... Bob
- id: 2203
  author: egxis
  author_email: ''
  author_url: ''
  date: '2008-07-22 12:01:46 +0200'
  last_modified_at: '2008-07-22 17:01:46 +0200'
  content: 'I have provided some basic instructions for those not-so-technical folks
    on installing Andy&#39;s fix:<br><br>1. Delete the original event from your iCal
    and don&#39;t notify the sender.<br><br>2. Save the following file [ <a href="http://thefragens.com/pub/MailExchange2iCal-TZ-fix.scpt">http://thefragens.com/pub/MailExchange2iCal-TZ-...</a>
    ]  to the following location:<br>   yournameLibraryMail<br><br>3. Edit the file
    ~LibraryMailMailExchange2iCal-TZ-fix.scpt and adjust the value of the property
    field, to your appropriate timezone, in Justin&#39;s example that would be:<br>   property
    ical_tzid : "Africa/Johannesburg"<br><br>4. Save the MailExchange2iCal-TZ-fix.scpt
    file<br><br>5. Create a new Mail rule<br>   a. Mail -> Preferences -> Rules ->
    Add Rule<br>      i. Description <br>      ii. If             <br>      iii.  Perform     <br>   b.
    Click "OK" and then "Apply"<br><br>6. Open the invite which was originally sent
    to you, check the time in iCal, and accept if it&#39;s correct.<br><br>7. Done.'
- id: 2204
  author: egxis
  author_email: ''
  author_url: ''
  date: '2008-07-22 12:07:14 +0200'
  last_modified_at: '2008-07-22 17:07:14 +0200'
  content: Hmmm, your blog software filtered out some of my comments.<br><br>Step
    5, fixed:<br>5. Create a new Mail rule<br>   a. Mail -> Preferences -> Rules ->
    Add Rule<br>      i. Description "Fix Microsoft Invites"<br>      ii. If "Any"  "Attachment
    Name"  "ends with"  ".ics"<br>      iii.  Perform "Run AppleScript"  "~LibraryMailMailExchange2iCal-TZ-fix.scpt"<br>   b.
    Click "OK" and then "Apply"
- id: 2205
  author: Dan
  author_email: ''
  author_url: ''
  date: '2008-08-05 02:54:09 +0200'
  last_modified_at: '2008-08-05 07:54:09 +0200'
  content: 'Hi Justin,<br><br>Thanks for the helpful info. I&#39;m going to need a
    little help with the timezone data. Here&#39;s what I have:<br><br>Exchange data
    received: <br>DTSTART;TZID="(GMT-07.00) Arizona":20080827T090000<br><br>My iCal
    data: <br>DTSTART;TZID=America/Phoenix:20080828T180000<br><br>I appreciate it!!'
- id: 2206
  author: Dan
  author_email: ''
  author_url: ''
  date: '2008-08-05 05:38:11 +0200'
  last_modified_at: '2008-08-05 10:38:11 +0200'
  content: Totally awesome - I&#39;ve just used the instruction in the previous posts
    and it works a treat. No longer will I be 2 hours early to client meetings!<br><br>Thanks
    heaps.<br><br>Dan.
- id: 2207
  author: Dan
  author_email: ''
  author_url: ''
  date: '2008-08-06 02:39:48 +0200'
  last_modified_at: '2008-08-06 07:39:48 +0200'
  content: ok - I used the script file in the post 5 above this. But It actually doesn&#39;t
    seem t work properly for new emails. It does work but only when I tell mail to
    Apply the rules to that message after it has arrived.<br><br>So Now I am trying
    to use Justin&#39;s original fix - but the reg-ex part is not my game - I need
    help :)<br><br>DTSTART;TZID="(GMT+10.00) Brisbane/East Australia":20080812T120000<br><br>That
    is my servers timezone.<br>Cheers.
- id: 2208
  author: Andy_Fragen
  author_email: ''
  author_url: http://thefragens.com/blog/
  date: '2008-08-06 04:55:58 +0200'
  last_modified_at: '2008-08-06 09:55:58 +0200'
  content: In deference to Justin, I&#39;m sure some of these comments are becoming
    quite confusing. The changing references between his scripts and mine. It might
    be better to move the discussion of my script over to <a href="http://thefragens.com/blog/2008/04/ical-exchange-time-zone-fix/"
    rel="nofollow">my script&#39;s page</a>.<br><br>Dan, I&#39;m happy to try and
    work with you or anyone else in getting my script to function as you&#39;d expect
    it to.
- id: 2209
  author: Andy_Fragen
  author_email: ''
  author_url: http://thefragens.com/blog/
  date: '2008-08-06 05:27:12 +0200'
  last_modified_at: '2008-08-06 10:27:12 +0200'
  content: Dan, I may have found a fix for my script not working properly for new
    emails.
- id: 2869
  author: Jon
  author_email: ''
  author_url: ''
  date: '2008-08-28 04:24:05 +0200'
  last_modified_at: '2008-08-28 09:24:05 +0200'
  content: The iCal error reported is caused by a missing "exit 0" line at the end
    of the fix_timezone.sh script.
- id: 2895
  author: Apple iCal / Microsoft Exchange fix version 1.2 released by Justin Hartman
  author_email: ''
  author_url: https://justin.hartman.me/2008/08/28/apple-ical-microsoft-exchange-fix-version-12-released/
  date: '2008-08-28 13:48:26 +0200'
  last_modified_at: '2008-08-28 11:48:26 +0200'
  content: "[...] thing then why not join my email list by clicking here. Thanks for
    stopping by.I have updated the Apple iCal / Microsoft Exchange fix for Leopard
    with a bug fix and a few [...]"
- id: 2896
  author: Justin Hartman
  author_email: ''
  author_url: https://justin.hartman.me
  date: '2008-08-28 13:46:18 +0200'
  last_modified_at: '2008-08-28 18:46:18 +0200'
  content: Hi Guys. I&#39;ve just released version 1.2 of this script. More details
    can be found over here:<br><a href="/2008/08/28/apple-ical-microsoft-exchange-fix-version-12-released/">https://justin.hartman.me/2008/08/28/apple-ical-...</a>
- id: 2975
  author: Anna
  author_email: abod2@hotmail.com
  author_url: ''
  date: '2008-08-30 15:59:26 +0200'
  last_modified_at: '2008-08-30 20:59:26 +0200'
  content: I just bot a new Mac. I just registered but when logging in the mac address
    does not recognize me. I have been working with best buy and apple store. I still
    have not resolved the problem. I may have to return the machine since I cannot
    get an email address. I really want the mac but seems no one can help me. What
    can I do?
- id: 2982
  author: iCal to Exchange before Snow Leopard | Tongfamily.com
  author_email: ''
  author_url: http://www.tongfamily.com/2008/09/ical-to-exchange-before-snow-leopard/
  date: '2008-09-06 06:36:08 +0200'
  last_modified_at: '2008-09-06 04:36:08 +0200'
  content: "[...] are real issues like Justin point out. Exchange uses non-standard
    time formats like (GMT+02.00) Harare/Pretoria whereas Apple [...]"
- id: 3041
  author: Atul
  author_email: adhawan10@gmail.com
  author_url: ''
  date: '2008-09-26 14:52:21 +0200'
  last_modified_at: '2008-09-26 12:52:21 +0200'
  content: "hey Justin, thanks for the script. I was able to replace only first instance
    but not the other two due to line breaks can you please help.\r\n\r\n(GMT+05.30)
    Calcutta/Chennai/Mumbai/New Delhi/India Standard Time\r\n\"(GMT+05.30) Calcutta/Chennai/Mumbai/New
    Delhi/India Standard \r\n Time\"\r\n(GMT+05.30) Calcutta/Chennai/Mumbai/New Delhi/India
    Standard Ti\r\n me\"\r\nperl -pi -e 's/\\(GMT\\+05\\.30\\)\\ Calcutta\\/Chennai\\/Mumbai\\/New
    Delhi\\/India Standard Time/Asia\\/Calcutta/g' $ICSFILE"
- id: 3042
  author: Andy_Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-09-26 17:59:00 +0200'
  last_modified_at: '2008-09-26 15:59:00 +0200'
  content: Atul, that is the most seriously screwed up TZID I've ever seen. You should
    complain to whomever runs the Exchange server to shorten it/fix it.
- id: 3043
  author: Andy_Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-09-27 00:15:15 +0200'
  last_modified_at: '2008-09-26 22:15:15 +0200'
  content: Atul, you may also want to see if <a href="http://thefragens.com/blog/2008/08/ical-exchange-time-zone-fix-chapter-2/"
    rel="nofollow"> my script </a>will work for you. Can't make any promises.
- id: 3044
  author: Atul
  author_email: adhawan10@gmail.com
  author_url: ''
  date: '2008-09-27 17:04:30 +0200'
  last_modified_at: '2008-09-27 15:04:30 +0200'
  content: Thanks it works for me.
- id: 3045
  author: Annette
  author_email: administration@mcconsulting.com.au
  author_url: ''
  date: '2008-09-29 08:55:06 +0200'
  last_modified_at: '2008-09-29 06:55:06 +0200'
  content: "Hi there,\r\nI really tried to work out what I was supposed to do here
    but three hours later I have given up!\r\nPlease help!!\r\n\r\nIncorrect time
    on incoming calendar\r\nDTSTART;TZID=E. Australia Standard Time:20080922T110000\r\nDTEND;TZID=E.
    Australia Standard Time:20080922T120000\r\n\r\nTime displayed in my calendar\r\nDTSTART;TZID=Australia/Brisbane:20080929T150000"
- id: 3046
  author: Andy_Fragen
  author_email: andy@thefragens.com
  author_url: http://thefragens.com/blog/
  date: '2008-09-29 17:43:11 +0200'
  last_modified_at: '2008-09-29 15:43:11 +0200'
  content: 'Annette, see comment #54.'
- id: 3048
  author: Chris
  author_email: hubbard@yahoo-inc.com
  author_url: ''
  date: '2008-09-30 05:37:05 +0200'
  last_modified_at: '2008-09-30 03:37:05 +0200'
  content: "Hi there,\r\nI've tried my best to sort this out by I'm afraid I'll be
    needing a little help.\r\nHere's the info as it appears in the invites :\r\nDTSTART;TZID=Korea
    Standard Time:20081003T113000\r\n\r\nI sent myself an invite from iCal but the
    format isn't as would be expected. I get :\r\nDTSTART;VALUE=DATE:20081003\r\n\r\nI
    believe it should be something like :\r\nDTSTART;TZID=Australia/Brisbane:XXXXXXXXXXX\r\n\r\nAny
    help would be greatly appreciated.\r\nThanks again !"
- id: 3062
  author: David
  author_email: bean@attensity.com
  author_url: ''
  date: '2008-09-30 18:34:43 +0200'
  last_modified_at: '2008-09-30 16:34:43 +0200'
  content: Justin - you are DA MAN!
- id: 3070
  author: Peter O'Hanlon
  author_email: pohanlon@iafrica.com
  author_url: ''
  date: '2008-10-06 12:14:25 +0200'
  last_modified_at: '2008-10-06 10:14:25 +0200'
  content: "This script is great!  Solved the problem for me, after hours of trying
    to get through to Apple support with nobody answering and the iStore with the
    answer that \"The Mac can't talk to Microsoft Outlook\".\r\n\r\nThanks again."
- id: 3077
  author: Simon
  author_email: simon.lives@gmail.com
  author_url: http://www.simon.co.za/
  date: '2008-10-13 10:41:25 +0200'
  last_modified_at: '2008-10-13 08:41:25 +0200'
  content: "You're a legend!\r\n\r\nI've also been looking for a solution to this
    problem for some time and then came across a link to this post from the Apple
    support forums.\r\n\r\nFinally, I can kick Entourage and get back to iCal. Thanks
    dude =)"
- id: 3499
  author: Zoltan
  author_email: toro@nd.edu
  author_url: ''
  date: '2009-01-14 15:48:38 +0200'
  last_modified_at: '2009-01-14 13:48:38 +0200'
  content: "After installing your script as you described, I\r\nnoticed that all the
    files, including the script itself\r\nhas a read and write permission for everyone
    in\r\nmy Applications folder.\r\n\r\nIsn't it dangerous to have a chmod -R 0777
    ?"
- id: 3802
  author: Jeff
  author_email: Jeff@jeff.com
  author_url: ''
  date: '2009-03-06 07:50:33 +0200'
  last_modified_at: '2009-03-06 05:50:33 +0200'
  content: Have you look at using SyncEm to do Exchange to iCal syncing?
- id: 4283
  author: Tom
  author_email: tomwynne@me.com
  author_url: ''
  date: '2009-06-22 13:22:39 +0200'
  last_modified_at: '2009-06-22 11:22:39 +0200'
  content: "Hi Justin,\r\n\r\nNot sure if you have a sec to help, but I have a similar
    issue with invites from Lotus Notes where they appear an hour later in iCal.\r\n\r\nLooking
    at the invites from Notes, I see the following:\r\n\r\nDTSTART;TZID=\"GMT\":20090622T130000\r\n\r\nAnd
    in an invite sent to myself from iCal the following:\r\n\r\nDTSTART;TZID=Europe/London:20090622T160000\r\n\r\n(note
    these meetings are at 2 different times)\r\n\r\nSo it looks like I need to translate
    \"GMT\" to \"Europe/London\".  If I've assumed correctly, any chance you could
    help with the regex?\r\n\r\nThanks,\r\n\r\nTom"
- id: 4496
  author: Surgical Diversions &raquo; iCal &#8211; Exchange Time Zone Fix
  author_email: ''
  author_url: http://thefragens.com/blog/2008/04/ical-exchange-time-zone-fix/
  date: '2009-09-20 19:34:31 +0200'
  last_modified_at: '2009-09-20 17:34:31 +0200'
  content: "[...] Justin Hartman has recently given you his solution to this problem.
    I haven't tested it but in looking at it I'm certain it works just
    fine. I say this because he's fixing the problem is a similar manner. It's
    just that he's using a combination of shell scripts and AppleScripts. I've
    got it down to a single AppleScript. [...]"
- id: 4762
  author: Melanie Wert
  author_email: melanie_sue@yahoo.com
  author_url: ''
  date: '2009-12-09 17:57:53 +0200'
  last_modified_at: '2009-12-09 15:57:53 +0200'
  content: Is there anything I can do for Snow Leopard?? I am having the same issues
    with the invitations in iCal coming from our Exchange Server. HHHEEEELLLLPPPP!!
- id: 4935
  author: Mike
  author_email: carguy333@yahoo.com
  author_url: ''
  date: '2010-06-05 01:27:07 +0200'
  last_modified_at: '2010-06-04 23:27:07 +0200'
  content: Can these scripts be removed/uninstalled at any time?  Is it as simple
    as just deleting the "iCal Fix" folder?
- id: 4985
  author: iCal Pain &#8211; Timezones &laquo; Tales from a Trading Desk
  author_email: ''
  author_url: http://mdavey.wordpress.com/2010/09/20/ical-pain-timezones/
  date: '2010-09-20 23:45:23 +0200'
  last_modified_at: '2010-09-20 21:45:23 +0200'
  content: "[...] pain, but not just on the Mac, also the iPhone and iPad  So I guess
    the script will fix the Mac issue, but not the iPhone/iPad [...]"
- id: 5267
  author: MikeH
  author_email: mikeheathis@me.com
  author_url: ''
  date: '2011-01-28 12:17:47 +0200'
  last_modified_at: '2011-01-28 10:17:47 +0200'
  content: "Hi\r\n\r\nAny suggestions on how the same issue can be addressed on an
    iPhone4?\r\n\r\nRegards\r\n\r\nMike"
---
One of the major drawbacks to working on an Apple Mac in a large corporate company is that most IT departments still use Microsoft Exchange Server for email and calendar support. 
While we've found many a work-around to get email up and running using Apple Mail there remains this irritating bug that prevents Exchange iCal events from syncing correctly with Apple iCal.
The reason this bug exists is because Exchange doesn't use standard compliant timezone information while Apple does and as a result iCal can't figure out what the correct timezone is from Exchange iCal invitations. Here's a quick example of the South African timezone differences between the two.
<strong>Exchange uses this format:</strong>
<code>(GMT+02.00) Harare/Pretoria</code>
<strong>While iCal uses this:</strong>
<code>Africa/Johannesburg</code>
This means that when a meeting request comes in from a Windows PC, iCal can't read data beyond the GMT+02.00 and it simply adds on 2 hours to the event. So a meeting sent from Exchange, scheduled for 14:00 actually appears in iCal as 16:00. We've missed many a meeting as a result!
Over the last few months I've spent countless hours trying to find a fix but no one has managed to get this issue resolved - not even Apple. I've now resorted to creating my own bug fix which I'm releasing publicly this morning.
<strong>How this bug fix works</strong>
The install script downloads all the necessary files from my server and installs both an AppleScript and Shell script to a folder called iCalFix in your Applications folder. 
The AppleScript is then assigned to a Mail Rule and runs whenever an iCal invitation is received. The AppleScript downloads the iCal file to a temporary location and the Shell script then runs on the temp file and replaces any incorrect timezone information. 
Once completed the new iCal event is then imported to iCal with all the new timezone data in place. The beauty of this fix is that you don't need to edit any of the package files for iCal and even your original iCal invitations are left untouched. This means that you can upgrade iCal at a later stage and you should be safe from any data corruption.
<strong>Installation</strong>
1. Download this <a href="/ccount/click.php?id=2">Install Script</a> to your computer and extract the contents from the ZIP file. The folder contains a Shell script (install.sh) which sets everything up for you.
<img src='/assets/images/uploads/2008/03/ical-installfolder1.png' alt='ical-installfolder.png' />
2. Right-click on the <strong>install.sh</strong> file, select <em>Open With</em> and then click on <em>Other</em>.
<img src='/assets/images/uploads/2008/03/ical-openwith.png' alt='ical-openwith.png' />
3. Click on <strong>Applications --> Utilities --> Terminal</strong>. If you can't select Terminal from the Open dialog then select <em>All Applications</em> from drop-down list below.
<img src='/assets/images/uploads/2008/03/ical-openterminal.png' alt='ical-openterminal.png' />
4. Terminal will open up and the install script will run. When you see the message "Installation Complete." you can close Terminal.
<img src='/assets/images/uploads/2008/03/ical-terminal.png' alt='ical-terminal.png' />
5. You can now check if the bug fix was installed correctly by navigating to <strong>/Applications/iCalFix/</strong> in Finder. If you see two files installed in that folder then installation was successful.
<img src='/assets/images/uploads/2008/03/ical-folder.png' alt='ical-folder.png' />
<strong>Setting up the Mail Rule</strong>
The last step before you can begin using this fix is to setup an email rule that calls the AppleScript file. Click on <strong>Mail --> Preferences --> Rules</strong> and create a new rule that looks identical to the one below.
<img src='/assets/images/uploads/2008/03/ical-mailrules.jpg' alt='ical-mailrules.jpg' />
<em>If you'd like to read detailed instructions on setting up this particular Mail Rule then make sure you read the readme.txt file located in the Install Script package.</em>
<strong>All done!</strong>
After completing the above steps any new iCal invitations sent from an Exchange server will automatically be converted to the right formats and you will never have an excuse to be 2 hours late for a meeting again! 
I suggest that you test this fix out by sending an iCal event from an Exchange server to see if all is working correctly. If the fix isn't working for you then your exchange server is probably using a different timezone format and you'll need to read the section in the readme.txt file on <em>customising timezone support for your country</em>.
<strong>Caveats</strong>
<ul>
<li><strong>NB: Make sure you open the readme.txt file in the Install Script folder. This readme file contains important information which isn't included in this post.</strong></li>
<li>This fix has only been tested on Mac OS X Leopard 10.5.1 and 10.5.2 and there is no guarantee that it will work on previous or future versions.</li>
<li><del datetime="2008-04-08T22:05:30+00:00">We've only been able to test this fix on three MacBook Pros and while it worked on all three YMMV.</del> We've now tested it on about 10 Macs now and it has worked on every one we've tested thus far.</li>
<li>Before installing or running this fix make sure you backup your iCal first. In iCal click <strong>File --> Back up iCal...</strong> and save a backed up version to your computer.</li>
<li>When you recieve an Apple iCal invitation there is a message that pops up in iCal saying that "no data was added to iCal" but when you click OK the iCal event is loaded to iCal anyway. I'm not sure why this happens with iCal but I'm working on a fix for that.</li>
<li>I can't provide support. If you want help in setting up a unique timezone regular expression then I'll assist with that but any other queries I cant't respond to - I just don't have the time, sorry.</li>
</ul>
