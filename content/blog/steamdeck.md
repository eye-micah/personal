+++
title = "My thoughts on the Steam Deck"
date = 2020-10-06
[taxonomies]
tags = [ 'foss', 'linux', 'video games' ]
+++

The Steam Deck is Valve's newest piece of tech, built on a [long history](https://www.gamingonlinux.com/2018/09/an-interview-with-the-developer-of-dxvk-part-of-what-makes-valves-steam-play-tick/) of open source technology.

[WINE](https://winehq.org) is a long-running project with the goal of translating Windows' Win32 API calls into something that Linux and macOS can run. It's not emulation -- think about Firefox and Chrome. Chrome is what most of the web is designed for, but Firefox is its own implementation that can also browse the web.

Here's a video from Glorious Eggroll, a contributor to Linux gaming: [https://youtu.be/K9khdYpMI5s](https://youtu.be/K9khdYpMI5s)

Linux machines nowadays are able to also translated DirectX graphics calls to Vulkan or OpenGL, the former giving really, really solid performance and sometimes being outright more stable than the game running on Windows. Tons of money being thrown at these projects by Valve alongside a robust, passionate community have allowed the Steam Deck to exist -- a handheld laptop-like PC that works with some of the best Linux tech out right now.

I wanna go more into this, but I wanted to kind of explain the use case for this device and what to expect through my own personal experience, being a PC gamer, a console gamer, and a Linux gamer for quite a while.


The Deck is pretty big. You're not carrying this comfortably in your pocket. It's the kind of thing you slip in a bag and play during your lunch break, not something you can pop out on a packed bus. 

Build quality is very good. The touchpads are very responsive, the sticks and buttons feel just as good as modern dedicated controllers, and the speakers are actually incredible considering the form factor.

The main issue I have is the screen -- I understand that the 1280x800 screen is so low res to cut down on cost and allow the device to actually run games comfortably -- but the brightness is so damn low it makes playing outdoors very unappealing. Not a fan of that at all.

The carrying case fucking sucks. Buy a new one. I'm serious. It barely fits in my bag because of how bulky and thick it is, a stark contrast from the slim form factor of the actual device. I bought a Tomtoc case today and will keep y'all updated in terms of how much easier it is to fit in a bag. Out of the box, however, the carrying case eats up so much space carrying it around in a small to medium-sized bag is incredibly unappealing. If you're a student and have to lug around books and binders and a laptop all day, you'll be really pressed for space and have to figure out how to properly lay everything out so it fits. It's like playing Tetris sometimes except you really have to put the damn thing away quickly sometimes and it takes too much time.

There's no USB-C port on the bottom, only the top. This makes pretty much every dock kind of weird and awkward, as you still have to plug the device in from the top. Not nearly as seamless as a Switch or even a ROG Ally (outside of the Ally being an overpriced buggy piece of shit you shouldn't buy).

In terms of software, I've been mostly pleased, but there's a clear lack of polish in some areas. The experience docking and connecting to an external monitor is a mess, and the speakers are actually incredible considering the form factor. The default desktop mode with KDE Plasma is pretty functional, with most apps people would actually use available as Flatpaks. You really don't need a writeable root for most Desktop Linux systems.

One of the things I found atrocious was actually turning on the device and registering it with my Steam account. For some reason, it refused to install properly when connected to my Wi-Fi at home, without any indication of what was going on. A re-image didn't help; I had to literally pull out a USB-C dock and connect it directly via Ethernet. Past that initial roadblock, which would have led most people to straight-up refund the Deck, my experience was pretty good. The power management settings are really nice and granular. I even have undervolt scripts that I'm able to run for better thermals and power efficiency. Love it.

Some games don't play nice, and that's kind of the draw of PC gaming. When you're not connected to the Internet, and you're using a platform where tons of games have malicious DRM that demands an online connection when gaming, it becomes a huge problem. Pretty much anything with Denuvo will require you to start it once while connected to the Internet, and if you decide to twerak the game with different Proton runtimes or maybe even mess around with mods, you could get locked out of your game for a day or so. This is unacceptable; an issue even with stationary gaming PCs is exacerbated when you don't really always have a stable connection out of the house. 

If you expect the occasional quirk, check to see whether the games you buy work out of the box, and try to start your games at least once at home before leaving the house to avoid Denuvo bullshit, you'll have a good experience. Valve made a great piece of hardware and the community has help build a solid, yet flawed gaming experience through software.

M.
