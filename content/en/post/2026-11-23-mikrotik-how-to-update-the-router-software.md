---
date: '2026-11-23T10:00:00Z'
image: /files/2026/10/mikrotik-hap-be-lite.jpg
title: 'MikroTik: how to update the router software'
translationKey: mikrotik-update-software
tags:
- mikrotik
---

Software updates are always important to fix security flaws and performance issues identified in systems, as well as to bring new features and support for new technologies, letting you get the most out of your equipment, whether it is a computer, a phone, or... a [MikroTik router][MikroTik]!

<!--more-->

{{< image src="/files/2026/10/mikrotik-hap-be-lite.jpg" >}}

MikroTik routers run their own operating system, [RouterOS], which ensures that all of them can be managed by [WinBox] and have roughly the same features -- routing, firewall, bandwidth management, wireless access point, [VPN server], and much more.

Every MikroTik router has two pieces of software that can be updated: the [firmware], which is specific to each device, and the [operating system], RouterOS, which is common to all devices. The recommendation is to update the operating system first and then the firmware. Let's see how to do both.

For future reference, I'm using the latest version of WinBox (v4.5), installed on [Linux Kamarada] from the AUR. It should also be possible to do these updates through MikroTik's web interface, the paths and screens are similar.

To update RouterOS, open WinBox and go to **System > Packages**:

{{< image src="/files/2026/11/mikrotik-update-01-en.png" >}}

In the **Packages** window, click **Check For Updates**:

{{< image src="/files/2026/11/mikrotik-update-02-en.png" >}}

Click **Download&Install**:

{{< image src="/files/2026/11/mikrotik-update-03-en.jpg" >}}

The MikroTik router downloads and installs the update and restarts. While this happens, WinBox will be disconnected. When the MikroTik finishes restarting, WinBox will reconnect and the **Check For Updates** window will show **System is already up to date**:

{{< image src="/files/2026/11/mikrotik-update-04-en.jpg" >}}

Once the operating system is updated, next we need to update the MikroTik's firmware. To do that, go to **System > RouterBOARD** and click **Upgrade**:

{{< image src="/files/2026/11/mikrotik-update-05-en.png" >}}

A confirmation window asks: **Do you really want to upgrade firmware?** Confirm by clicking **OK**:

{{< image src="/files/2026/11/mikrotik-update-06-en.jpg" >}}

The **RouterBOARD** window now shows that the firmware was successfully updated and asks you to reboot to apply the changes:

{{< image src="/files/2026/11/mikrotik-update-07-en.jpg" >}}

To reboot (turn off and on) the router, go to **System > Reboot**. A confirmation window asks: **Do you want to reboot the router?** Confirm by clicking **OK**:

{{< image src="/files/2026/11/mikrotik-update-08-en.jpg" >}}

The router reboots and, while this happens, WinBox is disconnected. When the MikroTik finishes rebooting, if you reconnect WinBox and go back to **System > RouterBOARD**, you'll see that the versions shown in **Current Firmware** and **Upgrade Firmware** match, indicating that the firmware is up to date:

{{< image src="/files/2026/11/mikrotik-update-09-en.jpg" >}}

Here I showed the easiest and most common way to update MikroTik's software, but in the official documentation you can find other options, such as downloading the update using your computer and sending it to the router via FTP:

- [Upgrade \| RouterOS Manual][operating system]
- [RouterBOARD \| RouterOS Manual][firmware]

[MikroTik]:         {{% ref "2026-10-27-getting-started-with-the-mikrotik-hap-be-lite-professional-router-for-your-home-network" %}}
[RouterOS]:         https://mikrotik.com/software
[WinBox]:           https://mikrotik.com/download/winbox
[VPN server]:       https://manual.mikrotik.com/docs/virtual-private-networks/
[firmware]:         https://manual.mikrotik.com/docs/hardware/routerboard/#upgrading-routerboot
[operating system]: https://manual.mikrotik.com/docs/getting-started/installation-and-upgrade/upgrade/
[Linux Kamarada]:   https://linuxkamarada.com/en/2025/10/12/linux-kamarada-is-moving-to-manjaro/
