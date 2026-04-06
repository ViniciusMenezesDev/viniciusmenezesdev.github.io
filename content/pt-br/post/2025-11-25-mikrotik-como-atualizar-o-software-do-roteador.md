---
date: "2025-11-25T08:20:00Z"
image: /files/2025/11/mikrotik-hap-ac3.jpg
title: 'MikroTik: como atualizar o software do roteador'
tags:
- mikrotik
---

Atualizações de _software_ sempre são importantes para corrigir falhas de segurança e problemas de desempenho que são identificados nos sistemas, além de trazer novas funcionalidades e suporte a novas tecnologias, permitindo que você aproveite o máximo do equipamento, seja ele um computador, um celular, ou... um [roteador Wi-Fi da MikroTik][MikroTik]!

<!--more-->

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

Os equipamentos de rede da MikroTik tem um sistema operacional próprio que é o [RouterOS], que garante que todos eles possam todos ser gerenciados pelo [WinBox] e tenham mais ou menos as mesmas funcionalidades -- roteamento, _firewall_, gerenciamento de largura de banda, ponto de acesso sem fio, [servidor VPN][mikrotik-vpn] e muito mais.

Todo equipamento de rede da MikroTik tem dois _softwares_ que podem ser [atualizados][mikrotik-help]: o _firmware_, que é específico de cada equipamento, e o sistema operacional, que é o RouterOS e é comum a todos os dispositivos. A [recomendação][mikrotik-help] é atualizar primeiro o sistema operacional e, depois, o _firmware_. Vejamos a seguir como fazer ambos.

Para referência futura, estou usando a versão legada do WinBox (v3.43), baixada do [_site_ da MikroTik][WinBox] (a mais nova ainda é beta), o roteador [MikroTik hAP ac³][hap_ac3] e o [novo Linux Kamarada baseado no Manjaro][Linux Kamarada], mas o WinBox é feito para [Windows] e funciona igualmente bem nele. Também deve ser possível realizar essas atualizações pela interface _web_ do MikroTik, os caminhos e telas são parecidos.

Para atualizar o RouterOS, abra o WinBox e vá em **System > Packages**:

{{< image src="/files/2025/11/mikrotik-update-01.png" >}}

Na janela **Package List**, clique no botão **Check For Updates**:

{{< image src="/files/2025/11/mikrotik-update-02.png" >}}

Clique no botão **Download&Install**:

{{< image src="/files/2025/11/mikrotik-update-03.png" >}}

Feito isso, o MikroTik baixa e instala a atualização e se reinicia. Enquanto isso, o WinBox será desconectado. Quando o MikroTik terminar de reiniciar, o WinBox será reconectado e a janela **Check For Updates** passará a exibir **System is already up to date**:

{{< image src="/files/2025/11/mikrotik-update-04.png" >}}

Uma vez atualizado o sistema operacional, na sequência devemos atualizar o _firmware_ do MikroTik. Para isso, vá em **System > RouterBOARD** e clique no botão **Upgrade**:

{{< image src="/files/2025/11/mikrotik-update-05.png" >}}

Na janela de confirmação que pergunta **Do you really want to upgrade firmware?** confirme clicando em **Yes**:

{{< image src="/files/2025/11/mikrotik-update-06.png" >}}

A janela **RouterBOARD** passa a informar que o _firmware_ foi atualizado com sucesso e pede para reiniciar para aplicar as alterações:

{{< image src="/files/2025/11/mikrotik-update-07.png" >}}

Para reiniciar (desligar e ligar) o roteador, vá em **System > Reboot**. Na janela de confirmação que pergunta **Do you want to reboot the router?** confirme clicando em **Yes**:

{{< image src="/files/2025/11/mikrotik-update-08.png" >}}

O roteador reinicia e, enquanto isso, o WinBox é desconectado. Quando o MikroTik terminar de reiniciar, se você reconectar o WinBox e voltar em **System > RouterBOARD**, verá que as versões indicadas em **Current Firmware** e **Upgrade Firmware** coincidem, indicando que o _firmware_ está atualizado:

{{< image src="/files/2025/11/mikrotik-update-09.png" >}}

Aqui eu mostrei a forma mais fácil e comum de atualizar o _software_ do MikroTik, mas na documentação oficial você pode encontrar outras possibilidades, como baixar a atualização usando o computador e enviar para o roteador via FTP:

- [Upgrading and installation - RouterOS - MikroTik Documentation][mikrotik-help]

[MikroTik]:         {{% ref "2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[RouterOS]:         https://mikrotik.com/software
[WinBox]:           https://mikrotik.com/download/winbox
[mikrotik-vpn]:     {{% ref "2021-04-09-mikrotik-como-criar-uma-vpn-com-l2tp-e-ipsec" %}}
[mikrotik-help]:    https://help.mikrotik.com/docs/spaces/ROS/pages/328142/Upgrading+and+installation
[hap_ac3]:          https://mikrotik.com/product/hap_ac3
[Linux Kamarada]:   https://linuxkamarada.com/pt/2025/10/12/linux-kamarada-muda-sua-base-para-o-manjaro/
[Windows]:          https://www.microsoft.com/pt-br/windows/
