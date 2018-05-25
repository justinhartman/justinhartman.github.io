---
title: How to change Apple Command key and CTRL key on Ubuntu 17.04
date: 2017-07-17 10:22:00 +02:00
last_modified_at: 2018-04-25 18:51:51 +02:00
categories:
- ubuntu
published: true
header:
  overlay_image: '/assets/images/linux/ubuntu_keys.jpg'
  overlay_filter: rgba(0, 0, 0, 0.5)
  caption: "Photo by [**Gustavo_Belemmi**](https://pixabay.com/en/ubuntu-wallpaper-linux-pc-simple-1479782/)"
  teaser: '/assets/images/linux/ubuntu_keys_580x300.jpg'
---
If you want to swap both the Command keys with the default Control key on Ubuntu 17.04 inverting what they do currently then this is for you.

## Intro
Ubuntu thinks that the MacBook Pro has a standard 105 key keyboard (probably thinking about the full Apple Keyboard) but that is wrong.

This should work on any Macbook/MacBook Pro. The issue is that Xmodmap assigns the `Super_L` to the left and right command keys, and `Control_L` to the left control key. 

## Map the keycode using Xmodmap
Create a new file in your home directory.
```sh
$ touch ~/.Xmodmap
$ nano ~/.Xmodmap
```

Now add the following to you `Xmodmap` file.
```sh
clear control
clear mod4

keycode 105 =
keycode 206 =

keycode 133 = Control_L NoSymbol Control_L
keycode 134 = Control_R NoSymbol Control_R
keycode 37 = Super_L NoSymbol Super_L

add control = Control_L
add control = Control_R
add mod4 = Super_L
```

To test it run the following command:
```sh
$ xmodmap ~/.Xmodmap
```

To make it run every time, add it to Startup Applications, the GUI Interface in Ubuntu. Now this was not easy for me to figure out but I figured out that you need to use absolute paths when adding an item to the Startup Applications.

In my instance this is the full path to my Xmodmap script:
```sh
/usr/bin/xmodmap /home/justin/.Xmodmap
```

Using your full path to `Xmodmap` create your new Startup Application like this:

![Xmodmap][image]

## Credits
Adapted from [kalaracey](https://askubuntu.com/users/18882/kalaracey)'s solution on this [AskUbuntu](https://askubuntu.com/a/158014) thread.

[image]: /assets/images/posts/xmodmap-startup-application.png
