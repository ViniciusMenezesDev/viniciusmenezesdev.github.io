---
date: 2021-06-17 10:40:00 GMT-3
image: /files/2021/06/ios-vpn.jpg
layout: post
title: 'MikroTik: como conectar à VPN a partir do iOS (iPhone e iPad)'
excerpt: 'Se você usa um dispositivo com iOS (um iPhone ou um iPad) e deseja conectá-lo à VPN do roteador MikroTik que configuramos em um post anterior, siga as instruções desse texto.'
---

{% include image.html src='/files/2021/06/ios-vpn.jpg' %}

Se você usa um dispositivo com [iOS] (um [iPhone] ou um [iPad]) e deseja conectá-lo à [VPN do roteador MikroTik][vpn] que configuramos em um [_post_ anterior][vpn], siga as instruções a seguir.

[iOS]: https://www.apple.com/br/ios/
[iPhone]: https://www.apple.com/br/iphone/
[iPad]: https://www.apple.com/br/ipad/
[vpn]:              {% post_url 2021-04-09-mikrotik-como-criar-uma-vpn-com-l2tp-e-ipsec %}

Aqui, estou usando um [iPhone 8][iphone-8] com [iOS 14.6]. As telas podem ser um pouco diferentes no seu dispositivo, mas a ideia é a mesma.

[iphone-8]:                 https://www.tudocelular.com/Apple/fichas-tecnicas/n3501/Apple-iPhone-8.html
[iOS 14.6]: https://pt.wikipedia.org/wiki/IOS_14

Acesse **Ajustes** > **Geral** > **VPN**:

{% include image.html src='/files/2021/06/ios-vpn-01.jpg' %}

Toque em **Adicionar Configuração de VPN**:

{% include image.html src='/files/2021/06/ios-vpn-02.jpg' %}

Preencha as informações sobre a VPN de acordo com as orientações a seguir, mas também de acordo com as orientações de quem configurou a VPN (os exemplos se referem ao tutorial sobre [como configurar VPN no roteador MikroTik][vpn]):

{% include image.html src='/files/2021/06/ios-vpn-03.jpg' %}

- Em **Tipo**, selecione **L2TP**
- Em **Descrição**, forneça um nome que te permita identificar a VPN, pode ser o nome que você quiser (exemplo: `VPN de Teste`)
- Em **Servidor**, indique o endereço IP (exemplo: `179.216.177.166`) ou nome e domínio DNS (exemplo: `6bxxxxxxxxc2.sn.mynetname.net`) do servidor da VPN (nesse caso, do roteador MikroTik)
- Em **Conta**, informe seu nome de usuário para conectar à VPN (exemplo: `teste`)
- Informe sua **Senha** para conectar à VPN (exemplo: `testando`)
- Em **Segredo**, informe a chave pré-compartilhada IPSec (exemplo: `12345678`)
- Opcionalmente, ative a opção **Enviar Todo Tráfego** para que todo o tráfego de Internet passe por dentro da VPN, ou desative essa opção para que apenas o que for realmente destinado à rede local da VPN passe por dentro da VPN

Quando terminar, toque em **OK**. Feito isso, a VPN passa a aparecer na lista de VPNs:

{% include image.html src='/files/2021/06/ios-vpn-04.jpg' %}

Selecione a VPN recém-criada e ative o _slider_ ao lado de **Não Conectado**.

Após alguns segundos, o sistema mostra que está **Conectado** à VPN:

{% include image.html src='/files/2021/06/ios-vpn-05.jpg' %}

Se souber de algum servidor _web_ na rede local da VPN, você também pode testar a conexão abrindo o navegador e acessando esse servidor. Nesse exemplo, eu testo a conexão com a VPN acessando a interface _web_ da minha impressora:

{% include image.html src='/files/2021/06/ios-vpn-06.jpg' %}

Você também pode fazer algum outro teste sugerido pelo administrador da rede.

Quando não precisar mais usar a VPN, volte aos **Ajustes** e desative o _slider_ referente à **VPN**:

{% include image.html src='/files/2021/06/ios-vpn-07.jpg' %}

Agora que a VPN já foi configurada, você pode ativá-la ou desativá-la por esse caminho mais curto.
