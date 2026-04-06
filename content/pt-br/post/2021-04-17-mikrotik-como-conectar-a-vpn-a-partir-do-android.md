---
date: "2021-04-17T17:45:00Z"
excerpt: Se você usa Android e deseja conectar seu smartphone ou tablet à VPN do roteador
  MikroTik que configuramos em um post anterior, siga as instruções desse texto.
image: /files/2021/04/android-vpn.jpg
title: 'MikroTik: como conectar à VPN a partir do Android'
tags:
- mikrotik
---

{{< image src="/files/2021/04/android-vpn.jpg" >}}

Se você usa [Android] e deseja conectar seu _smartphone_ ou _tablet_ à [VPN do roteador MikroTik][vpn] que configuramos em um [_post_ anterior][vpn], siga as instruções a seguir.

Aqui, estou usando um [Multilaser MS80X][multilaser-ms80x] com [Android 8.1.0 Oreo][oreo]. As telas podem ser um pouco diferentes no seu dispositivo, mas a ideia é a mesma.

Abra o aplicativo **Configurar** (ou **Configurações**):

{{< image src="/files/2021/04/android-vpn-01.jpg" >}}

{% include ad1.html %}

Entre na seção **Rede e Internet**:

{{< image src="/files/2021/04/android-vpn-02.jpg" >}}

Em seguida, entre em **VPN**:

{{< image src="/files/2021/04/android-vpn-03.jpg" >}}

Toque no botão de adicionar no canto superior direito da tela:

{{< image src="/files/2021/04/android-vpn-04.jpg" >}}

Preencha as informações sobre a VPN de acordo com as orientações a seguir, mas também de acordo com as orientações de quem configurou a VPN (os exemplos se referem ao tutorial sobre [como configurar VPN no roteador MikroTik][vpn]):

{{< image src="/files/2021/04/android-vpn-05.jpg" >}}

- Em **Nome**, forneça um nome que te permita identificar a VPN, pode ser o nome que você quiser (exemplo: `VPN de Teste`)
- Em **Tipo**, selecione **L2TP/IPsec PSK** (_pre shared key_, chave pré-compartilhada)
- Em **Endereço do servidor**, indique o endereço IP (exemplo: `179.216.177.166`) ou nome e domínio DNS (exemplo: `6bxxxxxxxxc2.sn.mynetname.net`) do servidor da VPN (nesse caso, do roteador MikroTik)
- Informe a **Chave pré-compartilhada IPSec** (exemplo: `12345678`)
- Informe seu **Nome de usuário** para conectar à VPN (exemplo: `teste`)
- Informe sua **Senha** para conectar à VPN (exemplo: `testando`)

{% include ad2.html %}

Quando terminar, toque em **Salvar**. Feito isso, a VPN passa a aparecer na lista de VPNs:

{{< image src="/files/2021/04/android-vpn-06.jpg" >}}

Toque na VPN recém-criada e depois em **Conectar**:

{{< image src="/files/2021/04/android-vpn-07.jpg" >}}

Após alguns segundos, o sistema mostra que está **Conectado** à VPN:

{{< image src="/files/2021/04/android-vpn-08.jpg" >}}

Se souber de algum servidor _web_ na rede local da VPN, você pode testar a conexão abrindo o navegador e acessando esse servidor. Nesse exemplo, eu testo a conexão com a VPN acessando um servidor _web_ [Apache] que instalei no meu _notebook_:

{{< image src="/files/2021/04/android-vpn-09.jpg" >}}

Você também pode fazer algum outro teste sugerido pelo administrador da rede.

Quando não precisar mais usar a VPN, volte às configurações de **VPN**, toque na VPN e depois em **Desconectar**:

{{< image src="/files/2021/04/android-vpn-10.jpg" >}}

[android]:          https://www.android.com/
[vpn]:              {{% ref "2021-04-09-mikrotik-como-criar-uma-vpn-com-l2tp-e-ipsec" %}}
[multilaser-ms80x]: https://www.tudocelular.com/Multilaser/fichas-tecnicas/n5075/Multilaser-MS80X.html
[oreo]:             https://www.android.com/versions/oreo-8-0/
[apache]:           https://httpd.apache.org/
