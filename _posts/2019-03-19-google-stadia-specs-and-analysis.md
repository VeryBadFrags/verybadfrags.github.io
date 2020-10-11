---
id: 116
title: 'Google Stadia - Specs and Analysis'
date: 2019-03-19T21:05:12-07:00
author: VeryBadFrags
layout: post
permalink: /2019/03/19/google-stadia-specs-and-analysis/
image: /assets/stadia/stadia-1.png
categories:
  - Gaming
tags:
  - Chrome OS
  - Chromecast
  - GNU/Linux
  - Google
  - Linux Gaming
  - macOS
  - Stadia
  - Streaming
  - Vulkan
  - Windows
comments: true
---
![Google Stadia]({{ page.image }})

Today, Google announced [Stadia](https://store.google.com/magazine/stadia), its new game streaming service. Following up on their successful [Project Stream](https://projectstream.google.com) experiment, they are now ready to release a full platform later this year, and the features look definitely promising. If this platform manages to get enough attention and support from Google, this could mean a lot for gamers and the gaming industry in general.

<!-- more -->

<iframe width="560" height="315" src="https://www.youtube.com/embed/Ry72b_fIKAk" frameborder="0" allow="clipboard-write; encrypted-media; picture-in-picture" allowfullscreen></iframe>

## Specs

This is what we know so far about Stadia:

* Stream up to 4K HDR at 60fps (with plans for 8K and 120fps in the future)
* Known supported platforms:
  * Any desktop or laptop that can run the Chrome browser (including Chromebooks). That means Windows, macOS, Chrome OS, and most GNU/Linux distributions.
  * Select Android devices (the demo ran on a Pixel 3 and a Pixel Slate, the complete list of supported models is unknown)
  * No information regarding iOS, but given how Apple handled [Steam Link](https://www.pcworld.com/article/3271102/valve-steam-link-app-android-ios-rejected.html), my guess is that Google won't be able to release Stadia in its current form because of the games store
  * Chromecast (demoed on a Chromecast Ultra 4K, no info about other models), using Google's own  Stadia Controller
  * No information about Android TV and Nvidia Shield, but I don't see why they wouldn't support them (besides the fact that they compete with Nvidia GeForce Now).
* Play with your keyboard/mouse, your USB controller, or Google's new Stadia Controller that connects via WiFi to the data center to further reduce input lag.
* The performances depend on your internet connection, not your machine. If you can stream a YouTube video in 1080p 60fps without noticeable buffering, you should be good to go.
* No installation required. Play any supported game within seconds.
* Deep integration with Google Assistant and Youtube.
* **Pricing model**: unknown, could be either a subscription or a more classic pay-per-game model.
* **Release date**: 2019

## From Project Stream to Stadia
{% include image.html url="/assets/stadia/assassins-creed-odyssey-hud-2.jpg" alt="Assassin's Creed Odyssey" caption="Assassin's Creed Odyssey" %}

Google has already shown that they can handle smoothly streaming AAA games with Project Stream. The experiment let you play [Ubisoft's Assassin's Creed Odyssey](https://www.youtube.com/watch?v=ACZpHzBKCqU) in 1080p 60fps at full settings on basically any desktop that's able to run Chrome. The beta was really impressive and I was able to complete the game very comfortably. There were times where the video would drop to lower bitrates to make up for the poor connection, similar to what you can experience with a regular stream. Also, I had a couple of occurrences (over dozens of hours of gameplay) where my connection was bad enough that it rendered the game completely unplayable for several minutes. Yet, the overall convenience of the service makes me willing to put up with its current flaws.

## Streaming comes with nice perks
{% include image.html url="/assets/stadia/konami-e1553054350799.png" alt="Picture of the back of the Stadia controller" caption="The game controller features the Konami Code" %}

Google's service will let you play AAA games on an old netbook. This is already nice in itself, but it gets even better the more you think about it.

I have a fairly good gaming PC, yet I would never be able to run Odyssey at full settings and maintain a steady 60fps. Because Google handles all the computing, you don't ever have to worry about the game's requirements. This makes your gaming setup much more future-proof than any gaming PC or console.

Another nice benefit is that video streaming is much less demanding on hardware than 3D rendering. Your MacBook will not overheat, your battery will handle longer play sessions and your desktop will not have to sound like a leaf blower when you play.

Stadia will come with native support in [Unreal Engine](https://www.unrealengine.com) and [Unity](https://unity.com/), meaning that developers already using these engines should be able to port their games with minimum effort, which enables them to greatly expand their potential audience. This is a huge key for Google to secure a strong game catalog upon release.

Finally, Google seems to have worked hard on integrating its streaming service with YouTube and Assistant. They introduced a concept of game state where the streaming service is aware of your position / status in-game, allowing you for instance to view a YouTube video of another player playing the same area as you, or sharing your game state with a friend like you would share a screenshot. Of course this will require dedicated developer's support and there will most likely come with a set of APIs available to devs - similar to the way [achievements](https://docs.microsoft.com/en-us/gaming/xbox-live/introduction-to-xbox-live-apis) and other [platform-specific services](https://partner.steamgames.com/) are currently handled.

## ... but it has its limits

Even at its smoothest moments, there was still a slight input lag during my play-through of Odyssey. I don't expect the delay to go away any time soon because it depends on your ISPs performances and more precisely the round-trip ping to Google's servers. This was never a problem for a game like Assassin's Creed, but this means that twitchy multiplayer games are out of question with the current state of the technology.

The other issue is that the platform is a walled garden. Should you want to leave Stadia for a different service in the future, the money you invested is wasted and your game library won't port (assuming they go for the pay-per-game model).

Obviously, you need a strong steady connection. Your are unlikely to play [Doom Eternal](https://bethesda.net/en/game/doom) on your local Starbucks WiFi.

## Bonus side effects for Linux Gaming

Stadia is a proprietary solution with a walled store, closed source, a firm grip from Google, and probably the strongest [DRM](https://en.wikipedia.org/wiki/Digital_rights_management) of all (not a single line of code from the game runs on your machine), yet it still benefits gaming on Linux in at least two ways.

While Linux Gaming is getting [stronger that ever](https://www.reddit.com/r/linux_gaming/), and [games compatibility](https://www.protondb.com/) is [steadily expanding](https://steamcommunity.com/games/221410/announcements/detail/1696055855739350561), there is still a long way to go to bridge the gap with Windows in terms of catalog and performances. Despite its limits, Stadia adds more options for Linux Gamers to access AAA titles and indie games. It can also give outdated hardware a second life.

Stadia games will be using the [Vulkan API](https://en.wikipedia.org/wiki/Vulkan_(API)), an alternative to the Direct3D monopoly, the Apple-only Metal, and the aging OpenGL. Vulkan has a bright future on GNU/Linux systems because of its native support and strong performances. As a matter of fact, Google will be running the Stadia games on Linux machines in their data-centers, which proves the maturity of the API. The indirect consequence is that more games will support Vulkan rather that Direct3D only, making it easier for the developers to also distribute their games on Linux.

## A long way to success

![The Stadia Controller](/assets/stadia/controller.jpg)

There are several criteria required before Google can succeed with Stadia. Not everyone has the internet connection required to power a steady video stream, and a lot of gamers won't be willing to give up on the comfort of a stable gameplay experience provided by a console or a PC.

The pricing model will also have a huge impact on the popularity of the service. Is it a fixed-fee all-you-can-play subscription? Do you have to buy the full game? Can you rent play time?

Perhaps the most important factor is the game library. In order to please a wide crowd, Google will need to serve a mix of fresh AAA titles, all-time classics, and killer indie games. They have announced a dedicated Stadia Game Studio that will release in-house games. While the [Nintendo](https://www.zelda.com/breath-of-the-wild/) and [PlayStation](https://www.rockstargames.com/reddeadredemption/) exclusives have shown that they are convincing-enough to sell consoles, Stadia will have to release killer games to draw players towards the platform.

Finally, Google's worst enemy is probably themselves, as they have a long history of [giving up on their products](https://killedbygoogle.com/). They need to show a strong and prolonged commitment the platform if they want to foster customer loyalty.

---

Are you convinced by video game streaming services? How much are you willing to pay for Stadia?

{% include comments.html %}
