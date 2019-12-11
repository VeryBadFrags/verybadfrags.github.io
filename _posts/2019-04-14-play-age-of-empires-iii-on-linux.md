---
id: 191
title: How to Play Age of Empires III on Linux (Invalid CD Key Error)
date: 2019-04-14T22:35:23-07:00
author: VeryBadFrags
layout: post
guid: http://verybadfrags.com/?p=191
permalink: /2019/04/14/play-age-of-empires-iii-on-linux/
timeline_notification:
  - "1555306529"
image: /wp-content/uploads/2019/04/screenshot-from-2019-04-14-22-38-18.png
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
---
<!-- wp:paragraph -->
<p>Gaming on Linux is getting easier than ever thanks to huge efforts from the community, but there are still some hurdles left before you can play some of your favorite games.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>As I tried to play <em>Age of Empires III: Complete Edition</em> on Steam, I was greeted with the following <strong>Invalid CD Key</strong> error:</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":194} -->
<figure class="wp-block-image"><img src="http://3.214.194.232/wp-content/uploads/2019/04/screenshot-from-2019-04-14-21-53-15.png" alt="" class="wp-image-194"/><figcaption>Error loading the <strong>PID Generator DLL</strong>. The DLL could not be found!<br>Please make sure the file is available in the installation directory and try again,</figcaption></figure>
<!-- /wp:image -->

<!-- wp:more -->
<!--more-->
<!-- /wp:more -->

<!-- wp:paragraph -->
<p>The problem is known and there are already some instructions out there, but I could not find all the required steps in a single place. This tutorial uses <a rel="noreferrer noopener" aria-label="Pop!_OS (opens in a new tab)" href="https://system76.com/pop" target="_blank">Pop!_OS</a>, but should work on any Ubuntu / Debian based distros (e.g. Linux Mint), and can be adapted to other distros using your preferred package manager. Here are the steps:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>Install Steam (either from the Pop!_shop, Software Center or <em>apt</em>)</li><li>Log in</li><li>In the Steam settings, enable Proton for non-supported games (use the latest stable version)</li></ul>
<!-- /wp:list -->

<!-- wp:image {"id":193} -->
<figure class="wp-block-image"><img src="http://3.214.194.232/wp-content/uploads/2019/04/screenshot-from-2019-04-14-21-22-22.png" alt="" class="wp-image-193"/></figure>
<!-- /wp:image -->

<!-- wp:list -->
<ul><li>Install the game, <strong>run it once</strong>, then exit when you get to the CD key input</li></ul>
<!-- /wp:list -->

<!-- wp:image {"id":195} -->
<figure class="wp-block-image"><img src="http://3.214.194.232/wp-content/uploads/2019/04/screenshot-from-2019-04-14-21-31-28.png" alt="" class="wp-image-195"/><figcaption>This is painful</figcaption></figure>
<!-- /wp:image -->

<!-- wp:list -->
<ul><li>Install <strong><a rel="noreferrer noopener" href="https://github.com/Winetricks/winetricks" target="_blank">winetricks</a></strong> if you don't already have it (you can also find it in <em>apt</em>)</li></ul>
<!-- /wp:list -->

<!-- wp:code -->
<pre class="wp-block-code"><code>cd "${HOME}/Downloads"
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/bin/winetricks
export WINETRICKS=/usr/bin/winetricks</code></pre>
<!-- /wp:code -->

<!-- wp:list -->
<ul><li>Install <strong><a href="https://github.com/Matoking/protontricks" target="_blank" rel="noreferrer noopener" aria-label=" (opens in a new tab)">protontricks</a></strong> if you don't already have it</li></ul>
<!-- /wp:list -->

<!-- wp:code -->
<pre class="wp-block-code"><code>sudo apt install python3-pip python3-setuptools python3-venv
python3 -m pip install --user pipx
~/.local/bin/pipx ensurepath
pipx install protontricks

# Maintain your version of protontricks up to date using
pipx upgrade protontricks</code></pre>
<!-- /wp:code -->

<!-- wp:list -->
<ul><li>Install <a rel="noreferrer noopener" href="https://packages.ubuntu.com/search?keywords=cabextract" target="_blank">cabextract</a></li></ul>
<!-- /wp:list -->

<!-- wp:code -->
<pre class="wp-block-code"><code>sudo apt install cabextract</code></pre>
<!-- /wp:code -->

<!-- wp:list -->
<ul><li> Finally, install the required libraries and fonts using protontricks (105450 is the ID of the game in Steam)</li></ul>
<!-- /wp:list -->

<!-- wp:code -->
<pre class="wp-block-code"><code>protontricks 105450 mfc42 winxp l3codecx corefonts</code></pre>
<!-- /wp:code -->

<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

<!-- wp:paragraph -->
<p>That's it! You should be able to (painstakingly) input your CD key and play the game. Make sure to set the game's resolution properly, because the UI is pretty buggy otherwise. Now go settle the New World for the Queen or something.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":197} -->
<figure class="wp-block-image"><img src="http://3.214.194.232/wp-content/uploads/2019/04/screenshot-from-2019-04-14-22-05-18.png" alt="" class="wp-image-197"/><figcaption>Looking good for a game from 2005.</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Feel free to comment bellow if you are still experiencing issues playing the game.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><em>Thanks to JT for the updated protontricks instructions, as the original project is no longer maintained.</em></p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li><a rel="noreferrer noopener" aria-label="Age of Empires III on ProtonDB (opens in a new tab)" href="https://www.protondb.com/app/105450" target="_blank">Age of Empires III on ProtonDB</a></li></ul>
<!-- /wp:list -->