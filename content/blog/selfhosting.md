+++
title = "Self-hosting content: why you should care, and how to start"
date = 2023-12-04
[taxonomies]
tags = [ 'linux', 'tech', 'selfhosting', 'homelab', 'networking' ]
+++

*Want to make clear that I'm new to this whole space, and will probably get some stuff wrong. If anything stands out as being inaccurate, don't shy away from letting me know on any of my socials.*

Ever use Netflix and just really enjoy a series? Maybe it wasn't the greatest thing ever, and maybe you just watched it only once and liked it, but it stays in the back of your brain.

Doesn't it suck to realize when you go to look for it again that Netflix has decided for some reason you no longer deserve to have that content? Nothing you can do about it, and you're throwing at least $7 a month at them. 

There are a ton of examples of shit like this. The modern Internet and the select few services that control content nowadays for the majority of people are able to have a stranglehold on what you can see, when you can see it, and how. Using the wrong browser? Enjoy DRM blocking you from enjoying 4K video streaming, even though your hardware is fully capable. Paid for a movie or game or something? Who cares, it'll be stripped away from you on a whim. Tech companies do not care, and do not have a vested interest in caring either.

The thing is, it's become easier and easier to fire up functional alternatives to a lot of ephemeral, subscription-based software or restrictive, walled garden content. The barrier to entry has never been lower. I'm gonna direct y'all to some very useful tools and let you run from there.

## Jellyfin and Plex

Netflix just kinda... sucks? None of these streaming services offer particularly good user experience nowadays and there's all sorts of frustrating limitations involved. You don't *have* to tolerate it. There are functional alternatives that respect you as a user much more.

### Plex

[Plex](https://plex.tv) is better than the alternative of a Netflix or Disney+, but it's somewhat locked down and has some frustrating limitations. However, it's very mature and has been around for quite a while. This offers a lot of immediate advantages:

- Plex has official apps on a ton of devices, like consoles, smart TVs, and phones.
- Plex is more thoroughly documented.
- Plex's UI is more polished. There are a handful of minor quirks you have to put up with on Jellyfin.

Plex, however, is limited in terms of the kinds of hardware you can use for transcoding, and is a lot more resource intensive. It might not be the best choice if you're someone on a weaker or older hardware.

### Jellyfin

[Jellyfin](https://jellyfin.org/) is an open-source fork of the older Emby media server. It's very flexible, lightweight, and it's what I personally use. It's not quite as polished, but it works great on my AMD and Intel hardware.


"Well, how do I set these up?"

Glad you asked. Both programs offer easy downloads for Windows, Linux, and macOS. You can always containerize Jellyfin, but that requires learning how to use Docker/LXD/Kubernetes tooling and that might not really make sense for your use case. 

Once the program's installed, see if you can set up your GPU to transcode and accelerate video. You can access Jellyfin's web client on its default port, 8096, and Plex on 32400. From the machine you're running the service on, just enter its IP followed by the port number. If you're typing from the machine running the service, "localhost" or "127.0.0.1" will point to it. 

These services are pretty self-explanatory and media organization is pretty easy. Your legally obtained Linux ISOs and homework is all organized neatly with chapter organization and subtitles and everything. 

## Music

Music discovery is undeniably useful, but I've personally found that a large music library I've accumulated over time has allowed me to sit through more full albums. It's nice to have control over everything and be able to hear all of the niche stuff that isn't available on Spotify or Apple Music.

There's a lot of self-hosted music services out there, just choose one. 

### [Airsonic](https://airsonic.github.io/)

This is what I use. While it took a decent bit of time for it to properly cache and locate all of my music, once that was done it ran great. There are great clients on Android and iOS, a web client if you want that, and plenty of desktop clients.

### [Navidrome](https://www.navidrome.org/)

This is a newer option, and it's a little rough around the edges. I wouldn't recommend this unless you know how to spin up a Docker container (which, to be fair, isn't the most difficult thing).


## Pi-hole

[Pi-hole](https://pi-hole.net/) is a DNS sinkhole designed to be used on low-power hardware like a Raspberry Pi computer. It's great for network-level blocking of ads, telemetry, and even entire domains. This can save tons of data, which is appealing on mobile devices, and generally makes the internet a little more usable and more lean. Pi-hole can run on pretty much anything. Personally, I'd recommend running this on its own dedicated device, or at least isolated from the other services running on it. 

Honestly, you can get away with using a virtual machine for this, if you want an easy setup and don't have another computer on hand that's running Linux. Just make sure to use *bridged network* on the virtual machine so it has its own IP address exposed to your LAN. I recommend Debian or Ubuntu: you can install a desktop environment in the VM to make it easier and just run the one-liner here to set it up: 

`curl -sSL https://install.pi-hole.net | bash`

You can use it as a full DHCP server, but for now, I'd recommend just going through the basic instrucitons on its site and using it as the default: a DNS server. 

You can set your router to use the Pi as its only DNS in its own settings, but you can also just add its IP in each of your devices' network configuration. 



## Static IP

If you're able to access your router's settings, try to lease the computer running certain services a static IP. This will ensure that the DHCP server won't decide to give it a different IP address in the future, ensuring that everything's accessible.

If you're using Pi-hole, YOU MUST DO THIS for the device running the service.

## DNS

Punching in an IP address every time you want to access your sites is a little inconvenient, so why not set things up with a dynamic DNS service and reverse proxying URLs. This video is perfectly functional and helpful and I'm going to link to it rather than type out basically identical instructions.

{{ youtube(id="qlcVx-k-02E" class="textCenter") }}


You COULD just use Pi-hole for this. It's up to you.


How do I access these services away from home?

## Tailscale

[Tailscale](https://tailscale.com/) is awesome, and it's one of the first tools I recommend to people that want a secure method of accessing their shit from home. It's really just a matter of installing the program on each device you're interested in, and logging in when asked for credentials.  

If you're connected to the Tailscale VPN, all of your services hosted from home are accessible. 

Make sure it's installed on each device that you want accessible.

## What about Wireguard/OpenVPN?

If you're asking that question, this guide probably isn't for you... a simple WireGuard VPN to home is easier to set up and provides better bandwidth, but it requires you to expose a port. I personally use [PiVPN](https://pivpn.io/) and it works great, but Tailscale "just works" for most users. 

## VPS, AWS, etc.

"Self-hosting" generally means... hosting your own content, but a VPS is like the next step removed from that. If you choose a good service, you can have a functional server in the cloud that can be accessed like anything else. On some networks (CGNAT), this might be the only way to have some control. A lot of the stuff I suggested works fine on a VPS you can rent out. 


Owning the media you consume is a challenge, and requires more of a learning curve than just paying for a bunch of monthly subscriptions. However, what you get out of it is way more control and flexibility over how you consume content, when you want to, and where you want to. 


