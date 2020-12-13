---
title: Code on an iPad with Shadow
date: 2020-12-13T11:26:00-07:00
author: VeryBadFrags
layout: post
image: /assets/code-ipad/code-ipad-top.jpeg
categories:
  - Software
tags:
  - Work
  - iPad
  - Android
  - Chromebook
  - Shadow
  - Cloud Gaming
comments: true
---
{% include image.html url=page.image alt="VSCode on an iPad" caption="A picture of an iPad running VSCode in a Shadow Windows VM" %}

Here's a way to leverage Shadow to code in VSCode with WSL on an iPad, an Android tablet, or even a Chromebook that can run Google Play.

Shadow is a cloud gaming service that lets you "rent" a remote gaming PC VM and stream its content on your local client.

The lowest tier is currently available for $11.99 / month and lets you game on a GeForce GTX 1080 equivalent with 256 GB of storage.

The platform supports Windows, macOS, Linux, Android, iOS/ipadOS and tvOS.

While this is definitely not the most affordable way to code on an iPad, it is a viable solution if you are already paying for the service for gaming. In my experience, Shadow is the cloud gaming service with the most stable streaming performances.

## Requirements

* A [compatible client](https://shadow.tech/shadow-apps)
* A [Shadow subscription](https://shadow.tech) (use code `LOI0MSH6` to support this blog)
* An iPad with iPadOS 11 or later
* A keyboard for your iPad
* Optional: a trackpad or Bluetooth mouse, the experience will be significantly better

## Setup

* Get the Shadow app on your device
* Start Shadow
* If you are already on your iPad, long press on the desktop, select `Display settings` and set the scale to at least 150%
* Setup [WSL](https://aka.ms/wslinstall)
    * Restart your VM after step 3
    * Ignore the steps related to WSL 2 (Steps 4 and 5)
    * To get an elevated prompt on your iPad without a pointer, press the `cmd` key, type `cmd`, then long press `Command Promt` and select `Run as administrator`
* Install your favorite Linux flavor from the [Windows Store](https://www.microsoft.com/en-us/search/shop/apps?q=wsl) (I went for the most recent Ubuntu LTS)
* Start the Linux distribution you have installed and set up your user
    * If you get an error during the initialization, try to force WSL 1 in an elevated prompt: `wsl --set-default-version 1`
    * Update your distribution for good measure
* Install [Visual Studio Code](https://code.visualstudio.com) or [VSCodium](https://vscodium.com)
* Install [Git](https://git-scm.com)
* Start VSCode and install the [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) extension from the Extensions menu
* Click the green `><` in the bottom left, and select `Remote-WSL: New Window`
* Open a terminal inside VSCode with ``control + ` ``
* Congratulations, you now have a modern coding environment on your iPad

Notes:
* VSCode extensions need to be installed from within the WSL window to be usable
* I recommend checking `Help > Keyboard Shortcut Reference` if you are not using a mouse

If you run into any issue, feel free to ask in the comments.

{% include comments.html %}
