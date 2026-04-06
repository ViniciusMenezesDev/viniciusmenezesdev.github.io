---
date: "2025-11-30T22:45:00Z"
image: /files/2025/11/mikrotik-reset-button.jpg
title: 'MikroTik: como restaurar a configuração de fábrica'
tags:
- mikrotik
---

Restaurar a configuração de fábrica de um roteador [MikroTik] é útil quando é mais rápido ou seguro começar do zero do que tentar consertar problemas na configuração atual, como configurações antigas ou bagunçadas, erros que quebram o acesso ou a conectividade, ou perda de senha. Também é útil quando se quer preparar o equipamento para outra casa ou pessoa, ou para restaurar a configuração padrão após [atualizações].

<!--more-->

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

Quando me mudo (e isso acontece de tempos em tempos, pareço até um nômade), gosto de [atualizar o _software_][atualizações] do MikroTik, restaurar a configuração de fábrica e refazer a [configuração do início][MikroTik]. Pode ser perfeccionismo, mas é assim que faço.

Se você estiver perto do roteador, uma forma de restaurar sua configuração de fábrica, especialmente útil se você não estiver conseguindo se conectar com ele, é usando o botão de **Reset** que fica no próprio roteador:

{{< image src="/files/2025/11/mikrotik-reset-button.jpg" >}}

Para restaurar a configuração de fábrica do MikroTik usando o [botão de **Reset**][mikrotik-docs]:

1. Desconecte o roteador da tomada;
2. Pressione e mantenha pressionado o botão de **Reset**;
3. Conecte o roteador à tomada;
4. Quando o LED começar a piscar, solte o botão.

Se você tiver conexão com o roteador e preferir fazer isso pelo WinBox, vá em **System > Reset Configuration**:

{{< image src="/files/2025/11/mikrotik-reset-01.png" >}}

Clique no botão **Reset Configuration**:

{{< image src="/files/2025/11/mikrotik-reset-02.png" >}}

Na janela de confirmação, clique em **Yes**:

{{< image src="/files/2025/11/mikrotik-reset-03.png" >}}

Aguarde o MikroTik reiniciar com as configurações padrão de fábrica.

[Relembrando][MikroTik], por padrão ele fornece uma rede Wi-Fi aberta, conecte-se a ela. Depois, acesse-o pelo WinBox (o endereço IP padrão do MikroTik é `192.168.88.1`, o **Login** padrão é `admin` e a senha padrão é vazia):

{{< image src="/files/2025/11/mikrotik-reset-04.png" >}}

Ao entrar no WinBox, ele apresenta um resumo das configurações de fábrica, clique em **OK**:

{{< image src="/files/2025/11/mikrotik-reset-05.png" >}}

Em seguida, ele pede para mudar a senha. Digite e confirme a nova senha nos dois campos de baixo e clique em **Change Now**:

{{< image src="/files/2025/11/mikrotik-reset-06.png" >}}

De certo, você não vai querer manter sua rede Wi-Fi aberta e sem senha. Para fazer as configurações básicas do MikroTik, use o [conhecido][MikroTik] botão **Quick Set**:

{{< image src="/files/2025/11/mikrotik-reset-07.png" >}}

Continue pelo primeiro tutorial:

- [Primeiros passos com o MikroTik hAP ac: roteador profissional para a rede de casa][MikroTik]

[MikroTik]:         {{% ref "2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[atualizações]:     {{% ref "2025-11-25-mikrotik-como-atualizar-o-software-do-roteador" %}}
[mikrotik-docs]:    https://help.mikrotik.com/docs/spaces/ROS/pages/24805498/Reset+Button
