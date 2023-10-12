+++
title = "Why I kinda like Macs"
date = 2023-10-12
[taxonomies]
tags = [ 'mac', 'linux', 'unix' ]
+++

So I've recently ended up using a lot of Macs due to work. Not just MacBooks, but iMacs. They range from current gen M1s and M2s to ancient 2012 MacBooks. 

**And... I have to say, I quite like the experience.**

Don't get me wrong, in terms of usability and functionality, I think Linux is leagues ahead. But GOD this is a way more usable experience than Windows, to the point where I'm seriously considering giving it a shot as a dual boot via GPU passthrough on my Linux PC.

I'll get into my issues with Windows later, but right now, I just want to highlight a lot of the things I like about Macs, on both the hardware and software front.

## Hardware

Macs all have a nice aluminum finish to them that makes them feel very premium and high-profile. The metal finish doesn't inspire confidence that I'd be able to drop it from a flight of stairs though, but that's most laptops that aren't old ThinkPads or rugged military laptops. 

The keyboards nowadays are quite good. They're, again, not as good as a ThinkPad keyboard, and lack the incredibly useful trackpoint, but there are so many other advantages that it doesn't really matter to me. I personally prefer keyboards with a bit more travel, but at minimum it's a huge improvement from the weird feel and travel of the older Intel MacBooks in that weird phase.

Apple Silicon is a really hard truth to accept, as someone that cares quite a bit about repairability and openness in hardware. There's no real way to upgrade storage or RAM on Apple Silicon SoCs. This means once your M1 Mac becomes old and obsolete, there's not much you can do if you didn't spend the premium on more RAM and storage. The trade off, of course, is improved speed, but I'm not sure if it's a worthy tradeoff.

The battery life and performance is absolutely absurd on these machines nowadays, so while it feels disgusting and sinful to me, the usability of these laptops ramps up incredibly well. At home, I have a bulky full ATX tower eating up space and making noise in my room. It's not the loudest thing ever. It's got a Noctua air cooler and Arctic PST PWM cast fans (which are a bit annoying). But, M1/M2 Macs are *silent*. I can go to bed and not hear a single thing, and that's nice. They can fit into a smaller form factor and be passively cooled, which makes me dream of the day I can rest a mini-sized PC on my desk with performance on par with my current gaming PC.



## Software

I think there are some things that are incredibly well thought-out about macOS. One of the things I actually really love is the difference in approach to keyboard shortcuts. On Windows and Linux, you have to memorize a bunch of unintuitive keyboard shortcuts revolving around the Super/Meta/Windows key. They're not consistent or intuitive, in my opinion. The other day, in fact, I was working on a Windows machine when it prompted me to input CTRL+ALT+Delete in order to change the soon-to-expire password as per organization group policy. Kinda had to take a step back and realize "what the hell?"

One of the things I love is how reliable the ⌘C and ⌘V shortcuts are on Mac. Makes copy-pasting into terminals a dream, since you no longer have to awkwardly hit Shift+Ctrl+C or Shift+Ctrl+V to interact with content on the terminal. It's the little things that count.

macOS has had large chunks of its filesystem read-only since Catalina, and that's also a really good choice, in my opinion. I'm a huge fan of immutable operating systems and think they offer benefits to stability and possibly even security. Apple issues out image-based updates in the same vein as iOS, Android, Chrome OS, and most immutable Linux distros, and I think this is the right call rather than the clunky experience that Windows and mutable Linux distros offer a lot of the time.

{{ youtube(id="0506yDSgU7M" class="textCenter") }}

There's no reason this should ever happen.

Software installation (that's not done through the App Store itself) is as dead simple as dragging and dropping an application folder to the `/Applications` folder. Most installers will prompt you for this automatically. It's really straightforward and is a punch above the garbage .MSI installers on Windows. Unfortunately, not having a well-integrated first-party package manager sucks and makes installing a lot of software not as seamless as Linux.

Brew works fine until you realize a huge chunk of software needs to be compiled. It's kind of like FreeBSD ports or the AUR where a lot of stuff is available but it all needs to be compiled. Updates and installation can take *forever*. 

But most large, mainstream desktop apps are a simple as mounting a .DMG file and dragging/dropping.


The window management is quite good in some areas, but lacking in others. The virtual desktop management is really solid, with a focus on neatly organizing full-screen apps. A three-finger swipe up on the trackpad gives me easy access to all of my desktops and windows, and a swipe to the left or right seamlessly switches them. Ctrl + arrow keys has the same behavior.

Unfortunately, the window tiling features are so behind everything else it's pathetic. It's such a pain getting windows to tile properly, as you have to press and hold the maximize button to even do it. I don't understand why this feature is so hard to access and why it's so limited. You can install extensions to make this experience a little better, but it's really embarrassing how insulated Apple can be at times.


Music production and any audio stuff has been incredibly solid on a Mac. I don't really have any complaints, but I've found that I rarely run into compatibility issues with audio on any of the three operating systems I use for it. My MIDI controllers like my drum pad and keyboard work fine, but they work fine on everything. 

Video editing has been fine, too. The experience is better than Linux in that regard as DaVinci Resolve is more stable and performant on AMD there. I've used it on my Hackintosh VM without any issues.


Another big thing is how gorgeous the entire operating system looks. There's a level of visual consistency that's just completely absent of Windows, and that Linux is only just now working towards. One of my biggest issues with Windows in general is how ugly and incoherent everything looks as a whole. Every application does its own thing, and even built-in stuff can range from Windows 3.1 to XP to 10 to 11 in terms of UI style. It really irks me.


The lack of any kind of gaming support is kind of preventing me from even considering trying this thing full-time. I do 100% of my gaming on Linux nowadays, between my PCs and my Steam Deck. I just game on the host system nowadays and it works fine, though.

## What's my beef with Windows, and why have I somewhat come around to Apple recently?

Windows, to me, represents the stuffy, old Oxford button-down shirt approach to desktop use. It's not necessarily more efficient, it's just familiar, and so bogged down in its familiarity that it brings everything else down with it. So many Linux distros aim to emulate Windows and all of its frustrating quirks, and they have a lot of the same usability issues as a result. There's an insane focus on backwards compatibility and clinging to the old and familiar, and a lot of Windows use in general seems skewed towards old design conventions and legacy software. It feels *old*, and not in a good and comfy way. 

It's far from being unusable, especially with Windows Subsystem for Linux and the wide berth of software support. Don't get me wrong. I just really, *really* dislike using it nowadays. It feels unpolished. macOS, for better or worse, makes a lot of choices that distinguish it from Windows, and it's not as much of a Swiss-army knife as Windows is as a result. It's not your best option for video games, or CAD software, or a long list of other use cases. 


## Apple sucks

I don't love or even like Apple as a company. They provide proprietary, walled-garden products and entrap you in their ecosystem, without offering the flexibility that one might want integrating their products with non-Apple stuff. Good luck having solid integration between a Mac and an Android, or an iPhone and Linux. 


They charge extravagant prices for their hardware and have a spotty track record that's only now kind of bouncing back to where it was.

Despite this, I think macOS has become a pretty usable product for personal desktop use. If you need some specific legacy software, sure, go ahead and use Windows. If you need Samba shares, USE WINDOWS, PLEASE. If you need a more flexible and integrated development environment, or if you don't want to lose out on flexibility, feel free to use desktop Linux. But honestly, for the most part, this shit "just works."



M.
