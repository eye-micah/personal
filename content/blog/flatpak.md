+++
title = "How to fix Flatpak"
date = 2023-12-19
[taxonomies]
tags = [ 'linux', 'tech', 'foss' ]
+++

Desktop Linux has a lot of potential to be a lot more robust and secure in the same vein as projects roughly based on it like GrapheneOS. The Steam Deck is a very popular device nowadays that happily chugs along running it. But there have to be some significant changes in the way the desktop paradigm is approached and how permissions and access work.

Flatpak is one piece of a puzzle, but I feel its sandboxing functionality is not only unhelpful, but potentially dangerous as it lulls users into a false sense of security.

## What's the point of sandboxing and permissions?

In a nutshell, functional sandboxing gives the user choice over how, when, and where applications are able to do anything. This is something that is fundamentally at odds with the way UNIX is designed, where the expectation was certain directories were far more crucial than a user's home directory or configs. 

The reality is the vast majority of computers (mobile, cloud, server, desktop, IoT) are *single-user*. There is one user that is assigned in each of your Kubernetes or Docker container, one user on your iPhone, and generally one or two users on a desktop computer or a laptop. 

**Pretty much any meaningful data on an end-user's computer is sitting in $HOME or C:\Users\username.**

<p align="center" width="100%" length="100%">
<img src="/1337.webp">
</p>


Operating systems are easy to reinstall if broken, it's not a big deal. But your precious Chun-Li goon pics are widely accessible in a single folder and anyone who wants access will be able to see them. I'm not just talking about physical access but all sorts of script kiddie tools to nab someone's private info.

If you're someone working in an enterprise environment, IT, etc., you probably have some ssh keys lying around on your home folder. I'm almost certain they're not gated behind some kind of security key or fingerprint scan -- anyone could easily just snatch them from you if given the chance.

## Okay, but what IS flatpak? I'm not a Linux user.

Flatpak is an application distribution format that uses a lot of built-in Linux tech for isolation, sandboxing, and containerization. At its core, it's a bunch of tooling built around bubblewrap, a sandboxing tool that doesn't require root access. 

Ideally, application distribution becomes easier when developers now have to target only one runtime and one version of a package. It lightens the load off distro maintainers as they can leave the challenge of packaging all their software up to third-parties (like it's done on literally every other platform).

Flatpak's most widespread use currently is on the Steam Deck, as on the immutable read-only filesystem there is no way to invoke a system-level package manager. A lot of apps have migrated over to Flatpak: OBS Studio and Firefox being the most notable.

It's absolutely crucial that a web browser is updated promptly and maintained well, and Mozilla's *officially maintained* build of Firefox is a great way to ensure that. It avoid thes incredibly sloppy job that [certain distros](https://www.debian.org/) have done trying to keep the most [vulnerable](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-5847) and crucial part of a desktop user's system safe.


So, logically, the main thing you want to have granular control over is your home directory. Why should you give much of a shit if an application can access /proc or see mostly default config files strewn throughout your filesystem? There's little to nothing there worth protecting.

Why is it, then, that a ton of Flatpaks ship with full home directory access and everything else turned off? Not only does this not prevent any meaningful attacks to a desktop user, but it hurts its ability to be an interoperable and well-integrated app on your system.

When you install Flatpaks currently, they come with pre-baked permissions that aren't really communicated well. Packagers have made assumptions in terms of what folders and resources applications can access, which is the exact opposite of how sandboxing on a desktop should work.

Everything should be an explicit choice of the user, within reason. Why does Chromium ship with FULL home directory access?

<p align="center" width="100%" length="100%">
<img src="/chromium.png">
</p>

This is solved through having a robust permissions model that happens on an OS level rather than opt-in on some applications.

If you've ever used a Mac,

or an iPhone,

or an Android phone,

or a UWP app installed on Windows,

you have been enjoying some degree of a sandbox already. Applications have to ask for access to specific folders, system resources, keystrokes, webcam and mic, and the list goes on. If you install Tinder on Google Play, it asks you after starting the app for location access. If you share your photos, it also gives you the ability to only pass through and share the ones you like. This is handled through sane, OS-level prompts conveyed to the user in a more comprehensible way.

"Computers are more complex than phones" you might be thinking, but the same concept still applies. Look no further than macOS enforcing this across the board and still having a healthy app ecosystem.


Linux servers have mandatory access control systems like SELinux and AppArmor that are a more sophisticated version of this concept, but they don't really do much to help a desktop user. 

Having an OS-level sandbox (and using Linux's existing tools like [portals](https://flatpak.github.io/xdg-desktop-portal/) to grant the access) would not only make the sandboxing of tools like flatpak more reasonable (assuming it would integrated properly with flatpak), but also give a layer of protection to all sorts of other shit you install on your computer.

The next step, I guess, would be binary signing libraries and applications, but that's a whole 'nother article.