---
date: "2026-06-28T19:00:00Z"
image: /files/2025/10/windows98.jpg
title: How to run Windows 98 on VirtualBox in 2026
translationKey: win98-virtualbox
---

{{< image src="/files/2025/10/windows98.jpg" >}}

Microsoft released Windows 98 [on June 25, 1998][WebDesignMuseum]. It's been 28 years now! If you used computers in the 1990s or early 2000s, you certainly know [Windows 98], which marked your childhood, school life, academic life, or professional life. In my case, Windows 98 was the first operating system I used and it marked my childhood. Just out of nostalgia, I managed to install Windows 98 on a [VirtualBox] virtual machine and run several games I played when I was a kid. The experience was so good that I decided to write this tutorial in case anyone else wants to join me in this nostalgia moment.

[Windows 98]:               https://en.wikipedia.org/wiki/Windows_98
[WebDesignMuseum]:          https://x.com/WebDesignMuseum/status/2070171408068489646
[VirtualBox]:               https://linuxkamarada.com/en/2019/08/12/20-apps-you-can-use-the-same-way-on-both-linux-and-windows-part-2/#13-virtualbox

Note that I will not present a detailed step-by-step guide here as I usually do in tutorials on this site and on [Linux Kamarada]. Instead, I will assume you know how to install and use both VirtualBox and Windows 98, and I will focus on the details of how to make Windows 98 work in VirtualBox on modern computers.

If you are not familiar with VirtualBox, the following tutorials may help you:

- [VirtualBox: the easiest way to try Linux without installing it][linuxkamarada-virtualbox]
- [Installing VirtualBox on Linux][virtualbox-linux]
- [Tips for using VirtualBox every day][virtualbox-tips]

[Linux Kamarada]:           https://linuxkamarada.com/
[linuxkamarada-virtualbox]: https://linuxkamarada.com/en/2019/10/10/virtualbox-the-easiest-way-to-try-linux-without-installing-it/
[virtualbox-linux]:         https://linuxkamarada.com/en/2019/10/19/installing-virtualbox-on-linux/
[virtualbox-tips]:          https://linuxkamarada.com/en/2019/11/01/tips-for-using-virtualbox-every-day/

For future reference (if you are reading this tutorial later, you may need to do something different), I am currently using VirtualBox version 7.2.8 ([released April 21, 2026][virtualbox-changelog]) installed on [Linux Kamarada][manjaro-kamarada]. VirtualBox can also be used on [Windows], and if that is your case, the steps below are very likely similar. I also note that this tutorial works for both Windows 98 and Windows 98 SE.

[virtualbox-changelog]:     https://www.virtualbox.org/wiki/Changelog
[manjaro-kamarada]:         https://linuxkamarada.com/en/2025/10/12/linux-kamarada-is-moving-to-manjaro/
[Windows]:                  https://www.microsoft.com/windows/

To demonstrate that it is possible to play games with Windows 98 on VirtualBox, I will present 4 games here that are considered abandonware.

## What is abandonware?

**_[Abandonware]_** (a neologism for "abandoned software") is what we call a program that is no longer sold, neither in physical stores nor online, and that also no longer receives support from its creator. Over time, they stop working on modern operating systems. This happens to many computer and video game titles, which end up "being left behind" as technology advances.

[Abandonware]:              https://en.wikipedia.org/wiki/Abandonware

There is no exact rule to say whether a game is abandonware or not. It is more a matter of common sense: the game still has copyright, but the owner does not seem to care about selling, supporting or protecting it anymore. Sometimes the company that made the game simply closed. Other times, the creator decides to release the game or even its source code, as happened with [Tyrian].

[Tyrian]:                   https://en.wikipedia.org/wiki/Tyrian_(video_game)#Legacy

Note that many games that were once considered abandonware now have remakes for newer systems available on platforms such as [GOG.com] or [Steam]. To play them, you do not need a virtual machine with Windows 98. Examples include:

[GOG.com]:                  https://www.gog.com/
[Steam]:                    https://store.steampowered.com/

- [Age of Empires II](https://www.myabandonware.com/game/age-of-empires-ii-gold-edition-3fx)
- [Counter-Strike](https://www.myabandonware.com/game/half-life-counter-strike-d6s)
- [Diablo II](https://www.myabandonware.com/game/diablo-ii-e6y)
- [Half Life](https://www.myabandonware.com/game/half-life-d5a)
- [RollerCoaster Tycoon](https://www.myabandonware.com/game/rollercoaster-tycoon-d2k)
- [The Sims](https://www.myabandonware.com/game/the-sims-bf5)
- [Tomb Raider](https://www.myabandonware.com/game/tomb-raider-d7x)
- [Tyrian 2000](https://www.myabandonware.com/game/tyrian-2000-9zi)
- [Worms 2](https://www.myabandonware.com/game/worms-2-497)
- [Worms: Armageddon](https://www.myabandonware.com/game/worms-armageddon-cyj)

The [My Abandonware] website is a good reference: the games they offer for download can be safely considered abandonware. When a game is re-released, like the ones listed above, they update the game page with links to stores where the game is available.

[My Abandonware]:           https://www.myabandonware.com/

## Suggested games for Windows 98

{{< youtube OK10BIt_2vM >}}

[**Astérix & Obélix**][obelix] is a platformer released in 1996 for [MS-DOS] and Windows, based on the famous French comic book characters. Developed by Infogrames, the game lets you control Astérix or Obélix through levels inspired by the comics, traveling across the Roman Empire. The style is very similar to classic platform games of the era, with colorful 2D graphics and an upbeat soundtrack. Despite its simplicity, it won fans for staying true to the humor and aesthetics of the original comics.

[obelix]:                   https://www.myabandonware.com/game/asterix-obelix-38o
[MS-DOS]:                   https://en.wikipedia.org/wiki/MS-DOS

{{< youtube bmwGe34A8EE >}}

[**Beast Wars: Transformers**][beast-wars] is a 3D action game released in 1998 for Windows (and also for [PlayStation]), based on the animated series of the same name from the [Transformers] franchise. Published by Hasbro Interactive, the game puts the player in control of characters from the Maximals or Predacons factions, allowing transformation between animal and robot forms during missions. With impressive graphics for its time, the game is fondly remembered by fans for bringing the Beast Wars universe to the PC.

[beast-wars]:               https://www.myabandonware.com/game/beast-wars-transformers-drr
[PlayStation]:              https://en.wikipedia.org/wiki/PlayStation_(console)
[Transformers]:             https://en.wikipedia.org/wiki/Transformers

{{< youtube Nax_ZOdOIIM >}}

[**Mario & Luigi**][mario] (better known simply as "Mario") is a free MS-DOS game widely spread in the 2000s. Created by Mike Wiering of [Wiering Software] and inspired by [Super Mario], the game features simple 2D graphics, six levels, and classic platform gameplay with jumping, running, and superpowers. It is not an official licensed game by [Nintendo], but rather a fan game. It started as a personal project to practice programming in Turbo Pascal and its [source code][mario-src] is available.

By the way, if you like games in this style, [Wiering Software] has other games worth checking out.

[mario]:                    https://www.myabandonware.com/game/mario-luigi-bz3
[Wiering Software]:         https://wieringsoftware.com/
[Super Mario]:              https://en.wikipedia.org/wiki/Super_Mario
[Nintendo]:                 https://www.nintendo.com
[mario-src]:                http://www.wieringsoftware.nl/mario/

{{< youtube SDPhiQEWWcw >}}

[**3D Pinball: Space Cadet**][pinball] is a classic arcade game included in [Microsoft Plus! for Windows 95][plus] and later in [Windows XP]. Published by [Microsoft], it was part of the [Full Tilt! Pinball] package, which included other tables besides Space Cadet. In the game, the objective is to climb ranks on a space mission, completing tasks and scoring points on a themed table full of lights and sound effects. Despite its simplicity, it became famous for being one of the most popular preinstalled Windows games.

[pinball]:                  https://www.myabandonware.com/game/space-cadet-3d-pinball-bc1
[plus]:                     https://en.wikipedia.org/wiki/Microsoft_Plus!#Microsoft_Plus!_for_Windows_95
[Windows XP]:               https://en.wikipedia.org/wiki/Windows_XP
[Microsoft]:                https://www.microsoft.com
[Full Tilt! Pinball]:       https://www.myabandonware.com/game/full-tilt-pinball-a3m

## Windows 98 on VirtualBox limitations

Normally, when we use VirtualBox, [Guest Additions][guest-additions-1] are our best friends, allowing deeper integration between the host system and the operating system installed in the virtual machine. The bad news is that [they are not available for Windows 98][guest-additions-2]. That does not prevent using Windows 98 in VirtualBox; it just means some features that would make this easier are not available, such as shared clipboard.

[guest-additions-1]:        https://linuxkamarada.com/en/2019/11/01/tips-for-using-virtualbox-every-day/#guest-additions
[guest-additions-2]:        https://www.virtualbox.org/manual/ch04.html#additions-windows

Also note that you will not be able to open the vast majority of current websites with the [Internet Explorer] browser that comes with Windows 98. Still, we will need to install drivers, programs, and games on Windows 98. Therefore, we will need to download them on the real machine and transfer them to the virtual machine.

[Internet Explorer]:        https://en.wikipedia.org/wiki/Internet_Explorer

Which leads to the next limitation: how to transfer files from the real machine to the virtual machine (and vice versa)? Personally, when I work with virtual machines, I prefer to transfer files over the network. However, the version of the [SMB protocol] (better known as "file and printer sharing") available in Windows 98 ([SMB 1.0]) is [old and insecure][techcommunity] and is not supported in newer versions of [Windows][learn.microsoft] and [Linux][wiki.archlinux].

[SMB protocol]:             https://en.wikipedia.org/wiki/Server_Message_Block
[SMB 1.0]:                  https://en.wikipedia.org/wiki/Server_Message_Block#SMB_1.0
[techcommunity]:            https://techcommunity.microsoft.com/blog/filecab/stop-using-smb1/425858
[learn.microsoft]:          https://aka.ms/smb1rs3
[wiki.archlinux]:           https://wiki.archlinux.org/title/Samba#Restrict_protocols_for_better_security

So, to transfer files to/from the VM, we are left with the following options:

- use some program to create an ISO image and then insert that ISO image into the virtual DVD drive (examples of ISO creation programs include [CDBurnerXP] on Windows and [Brasero] on Linux)
- use a FAT32-formatted USB flash drive (this is the easiest way; you can even format it using Windows 98 inside the virtual machine, but note that even if you use a USB drive to transfer most files, you will still need to install the USB driver first via an ISO image to be able to use the flash drive)
- use the [FTP protocol][ftp]: [FileZilla], for example, offers both FTP client and server; you could install the client in the virtual machine (an older version compatible with Windows 98, of course) and the server on your computer, or vice versa
- if you know your way around web servers, you could try installing [Apache] or [nginx] on your computer and download the files in the virtual machine using Internet Explorer.

[CDBurnerXP]:               https://cdburnerxp.com
[Brasero]:                  https://wiki.gnome.org/Apps/Brasero
[ftp]:                      https://en.wikipedia.org/wiki/File_Transfer_Protocol
[FileZilla]:                https://filezilla-project.org/
[Apache]:                   https://httpd.apache.org/
[nginx]:                    https://nginx.org/

In this tutorial, I will opt to use the USB flash drive. Feel free to use another solution if you prefer and adapt the tutorial accordingly.

Note that if we were using Windows XP, we would not have [any of these limitations][xp]. A possible limitation would be that many applications still do not work well even in Windows 98 compatibility mode. Maybe on a future nostalgic adventure I will try running Windows XP in VirtualBox? If you would like to see that, please comment at the end.

[xp]:                       https://forums.virtualbox.org/viewtopic.php?p=123370#p123370

## What we will need

Before we start, here is a list of files for you to download and organize however you want:

- **Windows 98 CD or ISO image:** if you have a Windows 98 CD but your computer does not have a CD drive, it is not expensive to buy one. It is also not hard to find Windows 98 ISO images on the Internet, though I will not share any links to them here.

- **[patcher9x] floppy disk image:** [`patcher9x-0.9.91-boot.img`][patcher9x-img]

[patcher9x]:                https://github.com/JHRobotics/patcher9x
[patcher9x-img]:            https://github.com/JHRobotics/patcher9x/releases/download/v0.9.91/patcher9x-0.9.91-boot.img

- **USB driver ISO image:** it was advertised at the time that one of Windows 98’s novelties compared to Windows 95 was USB support, which was not a lie, but Windows 98 did not support USB 2.0 or flash drives, which could be achieved with third-party drivers.
  - If you plan to use a flash drive to transfer files to the VM, you can download a USB driver ISO image here: [`driver-usb-en.iso`][driver-usb-iso].
  - If you plan to create your own ISO image with the files, you can download the USB driver as a ZIP file here: [`nusb36e.exe`][driver-usb-exe].
<br/><br/>

[driver-usb-iso]:           /files/2026/06/driver-usb-en.iso
[driver-usb-exe]:           https://oemdrivers.com/usb-windows-98-98se-mass-storage-device-drivers

- ISO image of [Astérix & Obélix][obelix] (if you want to play this game)

- ISO image of [Beast Wars: Transformers][beast-wars] (if you want to play this game)

Note that the files listed so far will stay on your computer; you will not transfer them into the virtual machine. The following files you will need to transfer into the virtual machine:

- **Archive utility:** I recommend using the latest version of [WinRAR] compatible with Windows 98 ([`wrar393br.exe`][winrar-exe]), but you can also use an old version of [WinZip] ([`winzip100.exe`][winzip-exe]) or [7-Zip] ([`7z920.exe`][7zip-exe])
- **[SoftGPU] video driver:** [`softgpu-0.8.2025.53.zip`][softgpu-zip] (alternatively, just like the USB driver, there is an ISO image available: [`softgpu-0.8.2025.53.iso`][softgpu-iso])
- **ICH AC97 audio driver:** [`0001-VXD_A406.exe`][ac97]
- **Xbox 360 controller driver:** [`x360c.w98.x86.en.zip`][x360-zip] (if you have that controller and want to use it with Windows 98)
- **Mario & Luigi:** [`Mario-Luigi_DOS_EN.zip`][mario-zip] (if you want to play this game)
- **3D Pinball: Space Cadet:** [`Space-Cadet-3D-Pinball_Win_EN.exe`][pinball-exe] (if you want to play this game)

[WinRAR]:                   https://www.win-rar.com/
[winrar-exe]:               https://web.archive.org/web/20101117004428/http://www.rarlab.com/rar/wrar393.exe
[WinZip]:                   https://www.winzip.com/
[winzip-exe]:               https://download.winzip.com/ov/winzip100.exe
[7-Zip]:                    https://7-zip.org/
[7zip-exe]:                 https://7-zip.org/a/7z920.exe
[SoftGPU]:                  https://github.com/JHRobotics/softgpu
[softgpu-zip]:              https://github.com/JHRobotics/softgpu/releases/download/v0.8.2025.53/softgpu-0.8.2025.53.zip
[softgpu-iso]:              https://github.com/JHRobotics/softgpu/releases/download/v0.8.2025.53/softgpu-0.8.2025.53.iso
[ac97]:                     https://web.archive.org/web/20180913222117/https://az695102.vo.msecnd.net/rtdrivers/pc/audio/0001-VXD_A406.exe
[x360-zip]:                 https://vogonsdrivers.com/files/downloader.php?fileid=1033
[mario-zip]:                https://d2.myabandonware.com/t/5bf95ee2-19d4-415c-a5c5-295e2a473927/Mario-Luigi_DOS_EN.zip
[pinball-exe]:              https://d3.myabandonware.com/t/7e748b78-370c-473d-b519-588f9def40f5/Space-Cadet-3D-Pinball_Win_EN.exe

## General recommendations

Before we begin, here are some recommendations:

- take [snapshots] of the virtual machine as you progress through the tutorial. That way, if something goes wrong, you can return to a point where the virtual machine was working and try again;
- whenever an installer or Windows itself says it is recommended to restart and asks whether you want to do so, answer yes;
- sometimes you will have to force-restart the virtual machine via VirtualBox, that is expected and it is fine (actually, you probably already did that with your old computer, right?).

Without further ado, let's get to work!

[snapshots]:                https://www.virtualbox.org/manual/ch01.html#snapshots

## Creating the virtual machine

Start VirtualBox and create a virtual machine with the following settings:

- **Operating system:** Windows 98
- **RAM:** 128 MB
- **Virtual hard disk:** 16 GB
- **Network:** bridged adapter

Insert the Windows 98 ISO image into the virtual DVD drive and start the VM.

## Installing Windows 98

Install Windows 98 as you normally would.

Near the end of installation, you will find a detail of running Windows 98 on VirtualBox: the error message "The SHELL32.DLL file is linked to missing export SHLWAPI.DLL:tFileAttributesA."

{{< image src="/files/2026/06/win98-01-en.png" >}}

You will also see an error message related to Explorer: "This program has performed an illegal operation and will be shut down."

You can close both error messages and restart the virtual machine.

If you try to enter Windows, you will receive the same error messages.

Insert the patcher9x floppy disk image into the virtual floppy drive and restart the virtual machine:

{{< image src="/files/2026/06/win98-02-en.png" >}}

At the MS-DOS prompt, run `patch9x`:

{{< image src="/files/2026/06/win98-03-en.png" >}}

Accept the default answers for the questions by hitting **Enter** and when asked whether you want to apply the patches, answer yes with `y`:

{{< image src="/files/2025/10/windows98-04.png" >}}

{{< image src="/files/2025/10/windows98-05.png" >}}

At the end, remove the floppy image and restart the virtual machine.

Now you will be able to start Windows 98 normally:

{{< image src="/files/2026/06/win98-06-en.png" >}}

But note that graphics look poor with 256 colors only.

## Installing the USB driver

Remove the Windows 98 ISO image from the virtual DVD drive and insert the USB driver ISO image. Start the installation by double-clicking `nusb36e.exe`:

{{< image src="/files/2026/06/win98-07-en.png" >}}

Then restart the virtual machine.

Connect a USB flash drive to your computer (make sure it does not contain any relevant data and can be formatted) and pass it through to the virtual machine:

{{< image src="/files/2026/06/win98-08-en.png" >}}

The first time, the USB flash drive is not recognized immediately. Go to **Control Panel > System > Device Manager**, select **Other devices > PCI Universal Serial Bus** and click the **Properties** button:

{{< image src="/files/2026/06/win98-09-en.png" >}}

Note: "The drivers for this device are not installed". To fix it, click **Reinstall Driver**. Let the wizard automatically search for the best driver. The system will find and install the driver for the USB controller and then do the same for the USB flash drive.

When it finishes, the USB flash drive will appear in **My Computer**:

{{< image src="/files/2026/06/win98-11-en.png" >}}

## Transferring files to the virtual machine

Format the flash drive and eject it (first in Windows 98 and then in VirtualBox).

Now the flash drive will appear on your computer, formatted with the FAT32 filesystem.

Transfer the files we will need to the flash drive.

Then insert it again into the virtual machine:

{{< image src="/files/2026/06/win98-12-en.png" >}}

Copy those files to a location such as **My Documents** and eject the flash drive.

## Archive utility

Next, install the archive utility of your choice (WinRAR, WinZip, or 7-Zip, or all three). Some drivers and games are compressed archives and you will need an archive utility to extract them.

{{< image src="/files/2026/06/win98-13-en.png" >}}

## Video driver

Shut down the virtual machine.

Then make the following change in the virtual machine settings:

- **Operating system:** Windows 7 (32-bit)

Click **OK** to apply it. This change alone will not modify the virtual machine hardware, but it will allow us to make the following changes.

Now go back to the virtual machine settings and make these additional changes:

- **Video Memory:** 128 MB
- **Graphics Controller:** VBoxSVGA
- **Features:** 3D Acceleration

Start the VM. Windows 98 will detect the new video card. Let the **Add New Hardware Wizard** automatically install the recommended driver, and restart.

Now let’s install the SoftGPU video driver, which will provide 3D acceleration to this virtual machine. Go to **My Documents**, extract the SoftGPU ZIP file. Enter the SoftGPU folder and run `softgpu.exe`.

Make sure the correct VirtualBox version is selected in the **Hypervisor preset** combobox and click the **Install** button:

{{< image src="/files/2026/06/win98-14-en.png" >}}

First, DirectX is installed, and the virtual machine is restarted. Then, do that again: start the SoftGPU installer, click **Install**, wait, and restart.

This time the system will boot with better graphics. You can also set up a higher resolution:

{{< image src="/files/2026/06/win98-15-en.png" >}}

## Audio driver

When we created the virtual machine and chose Windows 98 as the operating system, VirtualBox selected SoundBlaster 16 as the virtual sound card. If you want, you can keep that configuration; note that audio already works. However, this virtual sound card is not able to play MIDI, which is required for some games.

To change the sound card model, shut down the virtual machine. Then make the following change in the virtual machine settings:

- **Audio Controller:** ICH AC97

Start the virtual machine. Then, using WinRAR, extract the contents of the audio driver installer (`0001-VXD_A406.exe`):

{{< image src="/files/2026/06/win98-16-en.png" >}}

Inside the extracted folder, there is a `Win95` folder. The driver itself is inside it.

Go to **Control Panel** and start the **Add New Hardware** wizard. Tell the wizard to search for the driver in the `Win95` folder.

When finished, you will have sound again. You may need to restart the virtual machine.

## Xbox 360 controller (optional)

Optionally, if you have an Xbox 360 controller and want to use it, extract the contents of the driver 's ZIP file, connect the controller to the virtual machine (the same way you did with the flash drive), and install its driver using the **Add New Hardware** wizard.

## Ready to play!

If you've made it this far, your Windows 98 virtual machine is ready to use, to run any games and programs you want.

I hope you enjoy it! If you have any questions or suggestions, please write them in the comments. Wish you the best, until next time!

## References

To learn how to run Windows 98 on VirtualBox, and later to write this tutorial, I consulted several pages. I've already included links to many of them in the text, but I also consulted (primarily) the following:

- [Windows 98se step by step - VirtualBox forum][virtualbox-forum]
- [How to install Windows 98 SE in VirtualBox VM - January 2025 - 96075d82 - nmariusp - YouTube][youtube]
- [How to play midi music in VirtualBox Windows 98? - Super User][superuser]
- [Xbox 360 controller driver install - reddit/windows98][reddit]

[virtualbox-forum]:         https://forums.virtualbox.org/viewtopic.php?t=59559
[youtube]:                  https://www.youtube.com/watch?v=VXYUtdKfYUM
[superuser]:                https://superuser.com/a/1358005/458848
[reddit]:                   https://www.reddit.com/r/windows98/comments/9c5iag/xbox_360_controller_driver_install/