+++
title = "How do we 'fix' the Linux desktop?"
date = 2023-10-20
[taxonomies]
tags = [ 'foss', 'tech', 'mac', 'linux' ]
+++

In my opinion, Linux desktops leverage technologies that aren't sustainable if it's going to see widespread use on modern computers and be issued out as a preinstalled product on them. I'm going to bring up examples of several other modern operating systems used on the desktop to show that there is a better, more robust design model that makes sense for "normies".


## Separation between *system* and *user*

This is very obviously a point influenced by macOS, but it still reigns true. There's no Linux System to target on the desktop, or at least there isn't with the traditional distribution model. Two people's Ubuntu installations can vary wildly differently, and there's no consistent "system" it an rely on and deploy on modern computers. 

Dell offers XPS laptops shipped with Ubuntu, and other vendors have shipped out Ubuntu, Fedora, and even Manjaro on their laptops. But here's the question: how do you do tech support and help troubleshoot issues on their laptops when they're all heavily customized with tons of packages straying from the default? What do you even deploy to these laptops and desktop systems besides some custom-built Dell XPS Ubuntu ISO that they have to maintain on their own terms?

Having a system (volume) also allows you to sign all binaries part of that system. Since macOS 11, Apple has deployed [signed system volumes](https://support.apple.com/guide/mac-help/what-is-a-signed-system-volume-mchl0f9af76f/mac) that limits access to files on the system and refuses to allow binaries without a valid cryptographic signature. 

Outside of the obvious security benefits of this approach, it offers the ability to keep past OS installations as *volumes*, which can have their own snapshots used with Time Machine (Mac's user-facing OS backup app).

## Windows

Uh, Windows is a mess and while there's some level of separation involved where your average program will not bring the entire computer down, there's not really a guarantee. Tons of Windows installations have gross registry hacks or tweaks or whatever and there's not really much consistency between installations, either. Most vendors ship out their own custom images of Windows, and you can do it somewhat easily with DISM, but it's ultimately a hack over a really janky system. It's still slightly better than the complete lack of separation we have on Linux:

## Can't we do this in Linux?

Linux has some of this tech already, and has for a while. 

Fedora Silverblue offers image-based updates that issue out system updates through Git-like library management called ostree. This model is the closest we've gotten to some kind of "system" on a desktop Linux system. You have your desktop environment, basic applications like a terminal or a text editor, graphics drivers, kernel, etc. all as one easily reproducible system, rather than being a mishmash of different packages pull from repositories. This is great. 

You can't write to Silverblue's filesystem, outside of /etc, which it keeps track of file changes with, and some other directories like /var/home (which is used as the /home directory) and /tmp. This makes it not only newcomer proof but a reliable solution for even experienced Linux users that aren't interested in babysitting their distro. It makes everything easier to troubleshoot and fix for distro maintainers.

The logic with Silverblue and similar systems is using Flatpak, a sandboxed and containerized application format, for installing most software. This keeps the base system neat, tidy, and isolated while package maintainers can deploy their own applications, and there's no risk of the two interfering or causing package conflicts. It also makes it way easier to debug problems with both.

There is a project called [Universal Blue](https://universal-blue.org/), which already takes advantage of the technologies behind Silverblue to offer various customized images for different use cases. As you can see, there's still plenty of customization potential here, but it's now done *declaratively*, *before* you install your system and not afterwards. 

Both ostree and flatpak still have deduplication, so there aren't as many duplicate libraries hogging up space as you might expect. 

### ChromeOS

Chromebooks, if you didn't know, utilize this same image-based update system. The difference is compared to a Mac or a normal immutable Linux distro, CBs are very much so locked down and sandboxed from the top down. The expectation is you're never really interacting with the system's innards, because most work done on a Chromebook is using web applications and software and files in the cloud. However, notice how it's not particularly difficult to support a Chromebook and solve software issues -- you can always "powerwash" and reset the device to its initial state and have a robust, reliable system there.

### SteamOS 3

The Steam Deck is probably the best example of "traditional" Desktop Linux utilizing an immutable filesystem. You can tinker to your heart's content on Deck, mucking around with mods and installing all sorts of weird games, without ever being concerned that the machine won't boot tomorrow morning. Valve deploys ChromeOS-style updates and can ship them out without walking its users through the process of `pacman -Syu` and reading the Arch Linux news every time they want to update their computer. Most gamers will be fine with the offerings of Flatpaks available on Deck, and may not even know what a Flatpak is, just that Chrome and an Epic Games launcher and Dolphin Emulator are right there and easy to download.

**The reality is that no end user should ever have to interface directly with a package manager. They shouldn't even know what that is.**

What the hell do I mean by this? Think about it this way -- People that use their computers as tools rather than wanting to understand how everything really works just want to be able to access the apps they need. They want Excel or Word or Zoom or Chrome or whatever, and the details in terms of how it's obtained do not really matter.

**If you tell a newcomer to run `sudo apt install X` because it's more reliable than using a GUI tool, you've already lost the plot.**

Package managers should not be a user-facing tool, and their functions should be abstracted by "app stores" and "system updates". If you're a developer or someone that relies on a package manager, then you can easily fire up a container of some sort and go nuts. But Grandma does not need to know what's happening behind the scenes.

Remember Linus Sebastian tried to install Steam on Pop!\_OS and when he couldn't get a basic app used for gaming working, he jumped to the terminal as per System76's recommendations ON THEIR SITE?

Pop, a distribution based on Debian, ended up with a package conflict between Steam and core system packages like the literal desktop environment and systemd. Not going to attack the distro maintainers, stuff happens, but HOW THE HELL IS THIS SOMETHING THAT CAN HAPPEN on a system marketed towards desktop users?

The traditional model for application distribution on Linux is just too brittle, and not particularly robust, reproducible, or safe. 

**And I think the issue is, a large amount of Linux users are incredibly stubborn in keeping the operating system this way.**

There are so many oldheads that will defend to the death the ability to literally remove your boot loader and kernel because you installed the wrong version of Chrome. To them, taking inspiration from other operating systems is the death of what they deem a better approach to computer usage.

I get it. Macs, Windows machines, phones, everything presents proprietary walled gardens designed to fuck over its users at points. There's a certain level of reluctance here. But we're not going to get anywhere if we don't acknowledge the faults of desktop Linux.

## The driver situation

Fundamentally, Linux has an issue with the way out-of-tree drivers are approached; while trying to integrate everything directly into the kernel and not having a stable ABI for them speeds up development and might make things immediately easier for kernel development, it's an utterly impractical and unsustainable way to deal with the reality of the way drivers are managed. 

DKMS is clunky and forces modules to be recompiled every time they're used, and no out of tree drivers like ZFS, Nvidia, Broadcom, etc. integrate well when you need to do that every time. The reality is that a TON of people have older peripherals or just peripherals or devices that might have spotty Linux support or only target old versions of the kernel, and there's no way to seamlessly have them integrate with a simple driver download in the same vein as Windows.

macOS isn't really that much better, as they've entirely ditched kernel extensions in favor of [system extensions](https://support.apple.com/guide/deployment/system-and-kernel-extensions-in-macos-depa5fb8376f/web) or whatever, which run in userspace. I think Windows is kinda unbeat in this way as you can pretty much get any device or driver working regardless of age. 

## What can we do?

Well, the driver situation is unlikely to improve anytime soon, it's just a fundamental flaw for desktop usage for things to be arranged that way. One way to patch the flaws up here is to just keep integrating more and more drivers into the Linux kernel, so there's no need to even bother with hacky solutions trying to integrate them. 

Additionally, a robust image-based system can also ship with needed kernel modules, including out of tree ones, making for a more appealing proposition for hardware vendors to ship their custom-built version of a Linux distro. I can absolutely see a world where Dell ships out their own immutable distro with certain preinstalled tweaks or packages.

All of this comes from love and appreciation of Linux. I still daily drive it for large amounts of my day, and do ALL of my gaming and most programming, development, automation, machine learning, and a bunch of other stuff on a Linux desktop. I'm just tired of these long-standing issues and would like more people to embrace the future.