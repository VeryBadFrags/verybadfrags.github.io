---
id: 191
title: How to Play Age of Empires III on Linux (Invalid CD Key Error)
date: 2019-04-14T22:35:23-07:00
author: VeryBadFrags
layout: post
permalink: /2019/04/14/play-age-of-empires-iii-on-linux/
image: /assets/aoe3/age-3-hero.png
categories:
  - Gaming
tags:
  - Age of Empires 3
  - Age of Empires III
  - bug
  - GNU/Linux
  - Linux
  - Linux Gaming
  - Proton
  - protontricks
  - RTS
  - Steam
  - Steam Play
  - Tutorial
  - Wine
  - winetricks
comments: true
---
![Age of Empires III]({{ page.image }})

Gaming on Linux is getting easier than ever thanks to huge efforts from the community, but there are still some hurdles left before you can play some of your favorite games.

As I tried to play *Age of Empires III: Complete Edition* on Steam, I was greeted with the following **Invalid CD Key** error:

![PID Generator DLL](/assets/aoe3/invalid_key.png)
> Error loading the PID Generator DLL. The DLL could not be found!
>
> Please make sure the file is available in the installation directory and try again,

<!-- more -->

The problem is known and there are already some instructions out there, but I could not find all the required steps in a single place. This tutorial uses [Pop!_OS](https://system76.com/pop), but should work on any Ubuntu / Debian based distros (e.g. Linux Mint), and can be adapted to other distros using your preferred package manager. Here are the steps:

* Install Steam (either from the Pop!_shop, Software Center or *apt*)
* Log in
* In the Steam settings, enable Proton for non-supported games (use the latest stable version)

![Proton Settings](/assets/aoe3/steam-proton-settings.png)

* Install the game, **run it once**, then exit when you get to the CD key input

{% include image.html url="/assets/aoe3/key-input.png" alt="Input form for the game CD Key" caption="This is painful" %}

* Install **[winetricks](https://github.com/Winetricks/winetricks)** if you don't already have it (you can also find it in *apt*)

{% highlight bash %}
cd "${HOME}/Downloads"
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks
export WINETRICKS=/usr/bin/winetricks
{% endhighlight %}

* Install **[protontricks](https://github.com/Matoking/protontricks)** if you don't already have it

{% highlight bash %}
sudo apt install python3-pip python3-setuptools python3-venv
python3 -m pip install --user pipx
~/.local/bin/pipx ensurepath
pipx install protontricks

# Maintain your version of protontricks up to date using
pipx upgrade protontricks
{% endhighlight %}

* Install [cabextract](https://packages.ubuntu.com/search?keywords=cabextract)

{% highlight bash %}
sudo apt install cabextract
{% endhighlight %}

* Finally, install the required libraries and fonts using protontricks (105450 is the ID of the game in Steam)

{% highlight bash %}
protontricks 105450 mfc42 winxp l3codecx corefonts
{% endhighlight %}

---

That's it! You should be able to (painstakingly) input your CD key and play the game. Make sure to set the game's resolution properly, because the UI is pretty buggy otherwise. Now go settle the New World for the Queen or something.

{% include image.html url="/assets/aoe3/age-3-game-screenshot.png" alt="Screenshot of the main menu of Age of Empires III" caption="Looking good for a game from 2005" %}

Feel free to comment below if you are still experiencing issues playing the game.

*Thanks to JT for the updated protontricks instructions, as the original project is no longer maintained.*

* [Age of Empires III on ProtonDB](https://www.protondb.com/app/105450)

{% include comments.html %}
