+++
title = "Linux display headaches - Why I'm stuck on Wayland"
date = 2020-09-26
[taxonomies]
tags = [ 'foss', 'linux', 'tech' ]
+++

My Linux history has a long association with Nvidia. Not out of choice, but just because at the time I didn't really know Nvidia had some issues on the platform. I needed a low profile GPU for the low end OEM PC I owned at the time, and popping in a GT 1030 seemed like the right choice. At the time, I was daily driving Windows anyway, and never had to even *think* about whether or not my displays would work, hardware acceleration would work, etc.

Switched to Linux, and on the surface things seemed to be smooth, but then the issues hit. Keep in mind this was around 2018-2019.
* Hardware acceleration didn't work, PERIOD. Outside of mpv/VLC.
* That specific card doesn't support NVENC, which isn't necessarily an Nvidia driver problem, but it's frustrating how they ship out cards without such a useful feature.
* Kernel updates would frequently break shit. Some days I'd be greeted with a black screen, or Plymouth would be squashed or replaced with an ugly fallback visual.
* VKD3D (DirectX12 to Vulkan translation layer) experiences MAJOR peformance hits on Pascal or older cards. Also not technically something Nvidia can do anything about, but still a headache.
* Multiple displays with different refresh rates, VRR, and fractional scaling never worked.
* The desktop in general was noticeably choppier than Windows.

I've also had headaches with Nvidia Optimus on older Thinkpads. Jesus Christ, I never want to return to that again. 

All of these pain points, some of which self-imposed for using old hardware, have permanently burned me and made me reluctant to use Nvidia on Linux hardware. Despite this, I still use a [low profile Quadro](https://www.amazon.com/PNY-NVIDIA-Quadro-Professional-Graphics/dp/B06X9PW5DZ) in my NAS/media server. Nvidia's nice for that use case, since they offer very power efficient cards with solid encoders. Even then, I'm considering whether or not I should just replace that thing with a Radeon.

AMD GPUs have a mountain of issues, like their lack of focus on compute and non-gaming workloads, but almost every issue I run into on AMD I've found workarounds for. I use DaVinci Resolve and it works fine on AMD nowadays with OpenCL, OBS streaming and recording works fine, and whenever I get bored and decide to work with Stable Diffusion that also works fine. I'm not moving away from their offerings anytime soon, and I just hope they take some of their issues more seriously.

I bought a 6600 XT months ago and it's been an almost seamless experience. The only problems with the GPU are actual documented problems with the specific model I have, like not working in the PCIe x16 slot properly without lowering it in BIOS to x8 speeds, and the occasional crash in two specific games ([Judgment](https://www.protondb.com/app/2058180) and [Lost Judgment](https://www.protondb.com/app/2058190)). I also have a Steam Deck which has given me an issue-free gaming experience on the same GPU architecture (RDNA2). Life is good.

There's nuance to the GPU conundrum on Linux, and I'm not trying to present AMD as the no-brainer option in all cases, but I *cannot* emphasize enough how it works so much better for me.

M.
