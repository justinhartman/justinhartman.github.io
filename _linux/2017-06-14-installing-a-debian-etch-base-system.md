---
title: Installing a Debian Etch base system
date: 2007-02-05 18:16:00 +02:00
last_modified_at: 2018-04-20 01:27:38 +02:00
categories:
- debian
published: true
---

The following is a mini HOWTO on setting up a base Debian Etch system.

## Page Migration
This page first appeared on the [original Debian Wiki][history] which was created over a decade ago.

 - Originally Published: 5 February 2007

### Issues
**NB: I found all the old images and they have been replaced below. There is no further issues with this howto.**

~~In the [Howto History][history] page it is important to note that this particular Howto has been migrated from a legacy online backup. The original Howto used a total of 30 screenshots to demonstrate, visually, how to go about installing a Debian Etch base system.~~

~~Sadly, I have no access to any of the original screenshots and I fear this page may now be defunct.~~

~~That said, I've marked where the images used to be with `![Etch1.gif](/assets/images/linux.justinhartman.com//Etch1.gif "Etch1")` and left the original text instructions in tact. The text instructions remain valid however the screenshot that supported it no longer renders. If I ever am able to find these screenshots I will update this page accordingly.~~

---

## Introduction
I used this installation procedure when setting up my Etch server and this installation serves as the foundation for all other Debian Etch Server HOWTOs contained in this wiki. There are other HOWTOs in the wiki that detail setting up various other components for the server however this one only covers the Debian base installation.

## Requirements
As a starting point you'll need to download and get the latest Debian Etch version from the Debian website. Bandwidth in South Africa is very expensive so I decided to download the [Network Install version][network-install] as the total download size is only around 150MB. 

The Network Install version provides only a small portion of Debian required to start the installation process and then you can install whatever else you want from within the installation program via the Internet. The network install is perfect for setting up a Debian Server as you want a light-weight system without any unnecessary stuff.

This is the [particular version of Etch][etch-download] that I downloaded.
You will also need a dedicated Internet connection as certain items will be downloaded from the Internet during install time.

## Installing the base system
Insert your Etch Network Install CD into your system and boot from it. The installation starts, and first you have to choose your language:

![Etch1](/assets/images/linux.justinhartman.com/5/5a/Etch1.gif "Etch1")

Select your country:

![Etch2.gif](/assets/images/linux.justinhartman.com/7/71/Etch2.gif "Etch2")

Choose a keyboard layout:

![Etch3.gif](/assets/images/linux.justinhartman.com/0/0d/Etch3.gif "Etch3")

The hardware detection starts:

![Etch4.gif](/assets/images/linux.justinhartman.com/d/db/Etch4.gif "Etch4")

Enter the hostname of your system. In this example, the system will be called server1.example.com, so enter server1:

![Etch5.gif](/assets/images/linux.justinhartman.com/c/c5/Etch5.gif "Etch5")

Enter your domain name. In this example, this is example.com:

![Etch6.gif](/assets/images/linux.justinhartman.com/7/7d/Etch6.gif "Etch6")

Now you have to partition your hard disk. I will create one big partition (with the mount point /) and a little swap partition:

![Etch7.gif](/assets/images/linux.justinhartman.com/5/5c/Etch7.gif "Etch7")   
![Etch8.gif](/assets/images/linux.justinhartman.com/5/5e/Etch8.gif "Etch8")   
![Etch9.gif](/assets/images/linux.justinhartman.com/9/99/Etch9.gif "Etch9")   
![Etch10.gif](/assets/images/linux.justinhartman.com/6/6a/Etch10.gif "Etch10")   

Now the base system is being installed:

![Etch11.gif](/assets/images/linux.justinhartman.com/a/a2/Etch11.gif "Etch11")

Install the GRUB boot loader to the master boot record:

![Etch12.gif](/assets/images/linux.justinhartman.com/4/4f/Etch12.gif "Etch12")

Afterwards remove the Etch CD from your system and reboot it:

![Etch13.gif](/assets/images/linux.justinhartman.com/c/c5/Etch13.gif "Etch13")

Configure your time zone:

![Etch14.gif](/assets/images/linux.justinhartman.com/0/07/Etch14.gif "Etch14")

Enter a password for root:

![Etch16.gif](/assets/images/linux.justinhartman.com/2/21/Etch16.gif "Etch16")

Create a second user admin:

![Etch17.gif](/assets/images/linux.justinhartman.com/6/66/Etch17.gif "Etch17")   
![Etch18.gif](/assets/images/linux.justinhartman.com/9/97/Etch18.gif "Etch18")   
![Etch19.gif](/assets/images/linux.justinhartman.com/c/c1/Etch19.gif "Etch19")   

Choose your installation method. It's best to select http here:

![Etch20.gif](/assets/images/linux.justinhartman.com/f/fa/Etch20.gif "Etch20")

Select a mirror for your installation. Depending on where your server is hosted chose a location that is closest to the server:

![Etch21.gif](/assets/images/linux.justinhartman.com/2/27/Etch21.gif "Etch21")   
![Etch22.gif](/assets/images/linux.justinhartman.com/2/26/Etch22.gif "Etch22")   

Enter a proxy for the installation (if necessary). Normally you can leave this field empty.

![Etch23.gif](/assets/images/linux.justinhartman.com/e/e3/Etch23.gif "Etch23")

Under Debian software selection only choose Mail server. In the other wiki HOWTOs I go into detail on installing all the other services manually after this base installation.

![Etch24.gif](/assets/images/linux.justinhartman.com/d/df/Etch24.gif "Etch24")

The network installation starts:

![Etch25.gif](/assets/images/linux.justinhartman.com/6/61/Etch25.gif "Etch25")

Continue installing libc-client without Maildir support. If you want to use Maildir you can install Courier-POP3/Courier-IMAP later on in this [wiki HOWTO][postfix-url].

![Etch29.gif](/assets/images/linux.justinhartman.com/2/2e/Etch29.gif "Etch29")

Do not configure Exim at this stage unless you actually plan to use Exim as a Mail server. Instead there is a [wiki HOWTO][postfix-url] on setting up Postfix as the preferred Mail server which is why I left Exim un-configured here. I recommend Postfix as it's easy to use and set-up.

![Etch26.gif](/assets/images/linux.justinhartman.com/5/5a/Etch26.gif "Etch26")   
![Etch27.gif](/assets/images/linux.justinhartman.com/0/0a/Etch27.gif "Etch27")   
![Etch28.gif](/assets/images/linux.justinhartman.com/3/3c/Etch28.gif "Etch28")   

Congratulations! Your base system is now finished installing:

![Etch30.gif](/assets/images/linux.justinhartman.com/a/a1/Etch30.gif "Etch30")

## References
[The Perfect Setup - Debian Sarge (3.1)][falko-setup] by Falko Timme

[network-install]: http://www.debian.com/distrib/netinst
[etch-download]: http://cdimage.debian.org/cdimage/etch_di_rc1/i386/iso-cd/debian-testing-i386-netinst.iso
[history]: /projects/howto-history.html
[falko-setup]: http://www.howtoforge.com/perfect_setup_debian_sarge
[postfix-url]: https://www.linuxbabe.com/mail-server/setup-basic-postfix-mail-sever-ubuntu
