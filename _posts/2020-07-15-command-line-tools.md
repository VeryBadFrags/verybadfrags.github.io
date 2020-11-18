---
title: 12 Useful Command-Line Tools
date: 2020-07-15T17:44:00-07:00
author: VeryBadFrags
layout: post
image: /assets/command-line-wttr-paris.png
categories:
  - Software
tags:
  - Open Source
  - Work
  - Windows
  - macOS
  - Linux
comments: true
---
{% include image.html url=page.image alt="Weather report for Paris from wttr.in" caption="Weather report for Paris from wttr.in" %}

Here are some cool command-line tools I use. Feel free to share your tips in the comments.

<!-- more -->

## [wttr.in](https://wttr.in)

A terminal-friendly weather API.

```shell
curl "wttr.in/paris?m"
```

## [imagemagick](https://www.imagemagick.org)

Convert an image into another format, with rich customization options.

```shell
magick input.jpg output.png 
```

## [mat2](https://0xacab.org/jvoisin/mat2)

A metadata removal tool to anonymize files (like GPS coordinates added by your phone when taking a picture).

```shell
$ mat2 --show chicago1.jpg
[+] Metadata for chicago1.jpg:
    CreateDate: 2013:04:21 19:50:18-05:00
    CreatorTool: Adobe Photoshop CS5.1 Windows
    DeviceManufacturer: Hewlett-Packard
…
```

## [Pandoc](https://pandoc.org)

Convert common document formats into other common document formats. I use it to convert [Markdown](https://www.markdownguide.org) into basic html pages or pdf documents. You can also generate more sophisticated formats like .docx and PowerPoint slideshows.

```shell
pandoc --standalone index.md -o index.html
```

[Examples](https://pandoc.org/demos.html)

## [youtube-dl](https://ytdl-org.github.io/youtube-dl/)

A very rich Youtube video/audio downloader.

```shell
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch\?v\=turjyoThzHY
```

## [ffmpeg](https://ffmpeg.org)

Record, convert and stream audio / video.

```shell
ffmpeg -i input.mp4 output.avi
```

## [languagetool](https://languagetool.org)

A free offline grammar / spelling checker. Warning: requires JRE for the offline client.

```shell
$ echo "This frase is knot gret." | languagetool -l en-US
Expected text language: English (US)
Working on STDIN...
1.) Line 1, column 6, Rule ID: MORFOLOGIK_RULE_EN_US prio=-10
Message: Possible spelling mistake found.
Suggestion: phrase; frame; phrases; Fraser; erase; phrased; frisé
This frase is knot gret. 
     ^^^^^               

2.) Line 1, column 12, Rule ID: CONFUSION_KNOT_NOT[1]
Message: Did you mean the negation 'is not'?
Suggestion: is not
This frase is knot gret. 
           ^^^^^^^       
More info: https://en.wiktionary.org/wiki/knot

3.) Line 1, column 20, Rule ID: MORFOLOGIK_RULE_EN_US prio=-10
Message: Possible spelling mistake found.
Suggestion: get; great; grew; Greg; greet; Bret; fret; grit; GRE; Greta; egret; grep; GET; GREC; GRED; GRETA; Grey; RET
This frase is knot gret. 
                   ^^^^  
Time: 1949ms for 1 sentences (0.5 sentences/sec)
```

## [wpscan](https://wpscan.org)

If you manage a Wordpress instance, `wpscan` lets you look for known vulnerabilities based on the software version, plugins, themes, exposed internal resources, etc... The tool generates a report with details about the vulnerabilities, so that you can act to mitigate the issue.

```shell
wpscan -u your_blog_url
```

## [rig](https://rig.sourceforge.io)

`rig` generates a random identity from a pool of names and locations.

```shell
$ rig -m
Paul Bentley
857 Flanty Terr
Emporia, KS  66801
(316) xxx-xxxx
```

## [pass](https://www.passwordstore.org)

A simple password manager that uses gpg. The file-based format lets you easily synchronize your store using git or other file sync tools.

```shell
$ pass username/verybadfrags.com
hunter2
```

## [jq](https://stedolan.github.io/jq/)

Manipulate and filter JSONs.

```shell
$ echo '{"foo": 0, "bar" : "abc"}' | jq .bar
"abc"
```

## [mpv](https://mpv.io)

A powerful media player.

```shell
mpv https://www.youtube.com/watch?v=dQw4w9WgXcQ
```

## Bonus

### qrenco.de

Generate a text-based QR Code by calling this service.

```shell
curl qrenco.de/https://www.verybadfrags.com
```

```text
█████████████████████████████████
█████████████████████████████████
████ ▄▄▄▄▄ █▄▀▄▄   ███ ▄▄▄▄▄ ████
████ █   █ ██▄    ▄█ █ █   █ ████
████ █▄▄▄█ ██▀█ ▄█ █▄█ █▄▄▄█ ████
████▄▄▄▄▄▄▄█ ▀▄█▄▀ █▄█▄▄▄▄▄▄▄████
████ ▄█  █▄█▀▄▀ ▄█ ▀█▀▄▀▀▀▀▀▄████
██████ █ ▀▄ ▄▄█▄█▄█ ▀█▄ █ ▀▀ ████
████  ▄ ▀▀▄ ▄▄ ▀▄▀█ ▀▀▄█▀██▀▄████
████ ▄▀▀  ▄▄█▀█▀▀█▀▄█ ▄▀▄  ▄ ████
████▄█▄█▄▄▄▄▀▀ ▄▄▄█▄ ▄▄▄ █  █████
████ ▄▄▄▄▄ ██   ▄ ▄▀ █▄█ ███▄████
████ █   █ █ ▄▀  █ ▄▄▄ ▄▄██ ▀████
████ █▄▄▄█ █▀▀█▄▀▄▀▀█▄█▀ ▄   ████
████▄▄▄▄▄▄▄█▄█▄▄████▄▄███▄██▄████
█████████████████████████████████
█████████████████████████████████
```

[Source](https://github.com/chubin/qrenco.de)

{% include comments.html %}
