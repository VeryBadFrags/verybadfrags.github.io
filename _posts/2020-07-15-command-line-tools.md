---
title: 10 Useful Command-Line Tools
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
![Weather report for Paris from wttr.in](/assets/command-line-wttr-paris.png)

Here are some cool command-line tools I use. Feel free to share your tips in the comments.

## [wttr.in](https://wttr.in)

A terminal-friendly weather API.

```shell
curl "wttr.in/paris?m"
```

## [imagemagick](https://www.imagemagick.org)

Convert an image into another format, with rich customization options.

```shell
magick image.jpg image.png 
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

## [languagetool](https://languagetool.org)

A free offline grammar / spelling checker. Warning: it requires JRE for the offline client.

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

## [rig](https://rig.sourceforge.io)

`rig` generates a random identity from a pool of names and locations.

```sh
$ rig -m
Paul Bentley
857 Flanty Terr
Emporia, KS  66801
(316) xxx-xxxx
```

## [pass](https://www.passwordstore.org)

A simple password manager that uses gpg. The file-based format lets you easily synchronize your store using git or other file sync tools.

{% if page.comments %}
<div id="disqus_thread"></div>
<script>
    var disqus_config = function () {
        this.page.url = '{{ page.url | absolute_url }}';
        this.page.identifier = '{{ page.id}}';
    };

    (function() {  // REQUIRED CONFIGURATION VARIABLE: EDIT THE SHORTNAME BELOW
        var d = document, s = d.createElement('script');
        
        s.src = 'https://verybadfrags.disqus.com/embed.js';
        
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
{% endif %}