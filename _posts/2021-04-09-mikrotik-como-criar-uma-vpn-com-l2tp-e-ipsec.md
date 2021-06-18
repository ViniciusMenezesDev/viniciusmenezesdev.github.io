---
date: 2021-04-09 10:00:00 GMT-3
image: /files/2021/04/mikrotik-vpn-depois.jpg
layout: post
title: 'MikroTik: como criar uma VPN com L2TP e IPsec'
---

Final de semana chegando, você quer jogar com seus amigos, mas estão todos em suas casas, talvez até mesmo em cidades diferentes. O jogo requer que todos os computadores estejam na mesma rede local. O que fazer nesse caso? Se você tem um roteador [MikroTik], como o que já foi assunto de alguns _posts_ aqui no _blog_, uma opção é levantar uma VPN nele.

Uma **[VPN]** (do inglês _Virtual Private Network_, rede privada virtual) simula uma rede local entre dois ou mais computadores que estão fisicamente distantes, mas conectados pela Internet. Ela cria túneis entre os computadores, criptografando a comunicação — que ocorre, portanto, de forma privada e segura. Já expliquei [o que é VPN][vpn] em [outro texto][vpn].

{% include image.html src='/files/2021/04/mikrotik-vpn-antes.jpg' caption='Antes da VPN, diversos dispositivos conectados à Internet' %}

{% include image.html src='/files/2021/04/mikrotik-vpn-depois.jpg' caption='Depois da VPN, eles parecem estar na mesma rede local' %}

Hoje, veremos como criar uma VPN no roteador MikroTik usando o protocolo [L2TP] (do inglês _Layer 2 Tunnelling Protocol_, Protocolo de Tunelamento de Camada 2) em conjunto com o protocolo [IPsec] (do inglês _IP Security Protocol_, Protocolo de Segurança IP).

Esse texto é baseado em grande parte no excelente [tutorial em vídeo do Leonardo Vieira][leonardo-vieira], que segui para configurar a VPN na minha casa. Meu texto será focado em como configurar uma VPN que permite a computadores de fora se conectarem à rede de casa (uma VPN do tipo _point-to-site_). O procedimento é parecido se você usa roteadores MikroTik em uma empresa com filiais e quer criar VPNs para conectar os MikroTiks das filiais ao MikroTik da sede (uma VPN do tipo _site-to-site_). Se esse é o seu caso, recomendo ver o vídeo.

{% include ad1.html %}

## Pré-requisitos

O ponto de partida desse tutorial é um roteador MikroTik configurado como mostrado nos tutoriais anteriores:

- [Primeiros passos com o MikroTik hAP ac: roteador profissional para a rede de casa][mikrotik]
- [MikroTik: modo de segurança (Safe Mode)][safe-mode]
- [Configurando o modem Sagemcom F@ST 3486 em modo bridge][bridge]

Note que se seu roteador MikroTik não possui um IP "real" (ou público), você não conseguirá se conectar à VPN por meio da Internet (usando seu celular na rua, por exemplo). Informe-se sobre [_carrier-grade_ NAT (CGNAT)][cgnat] e verifique o endereço IP que seu roteador recebeu da operadora. Pode ser que ele tenha recebido um endereço IP privado.

## Criando a VPN no roteador MikroTik

Acesse o MikroTik pelo WinBox. No menu à esquerda, expanda **IP** e clique em **Pool**:

{% include image.html src='/files/2021/04/mikrotik-vpn-01.jpg' %}

Clique no botão de adicionar. No campo **Name** (nome), dê um nome para a fila de IPs, pode ser o nome que você quiser (eu vou usar `vpn`):

{% include image.html src='/files/2021/04/mikrotik-vpn-02.jpg' %}

Em **Addresses** (endereços), informe a faixa de endereços IP que o MikroTik deve fornecer para os computadores que se conectarem à VPN. Essa faixa deve ser necessariamente diferente da faixa da rede local. No meu caso, eu já havia definido a rede local como `10.0.0.0/24`, vou definir a VPN como `10.0.1.0/24`, para isso vou informar a faixa `10.0.1.2-10.0.1.254`. O primeiro endereço (`10.0.1.1`) será o do roteador e o último é sempre o de _broadcast_ (`10.0.1.255`). Quando terminar, clique em **OK**.

Depois, no menu à esquerda, clique em **PPP** e, na janela que abre, selecione a aba **Profiles** (perfis). Dê duplo-clique no perfil já existente **default-encryption**:

{% include image.html src='/files/2021/04/mikrotik-vpn-03.jpg' %}

Em **Local Address** (endereço local), informe o endereço que o roteador terá dentro da VPN (no meu caso, `10.0.1.1`). Em **Remote Address** (endereço remoto), expanda o menu e selecione a fila de endereços criada antes (`vpn`). Quando terminar, clique em **OK**.

Ainda na janela **PPP**, mude para a aba **Secrets** (a tradução ao pé da letra seria "segredos", mas a ideia aqui é algo como "usuários e senhas") e clique no botão de adicionar:

{% include image.html src='/files/2021/04/mikrotik-vpn-04.jpg' %}

Em **Name**, informe um nome de usuário (_login_). Para o teste, vou usar `teste`.

Em **Password**, informe uma senha para o usuário que você está criando. Nesse teste, vou usar `testando`, mas claro que na verdade o ideal é usar uma senha mais segura que essa.

Em **Service** (serviço), selecione **l2tp**.

Em **Profile** (perfil), selecione **default-encryption**. Quando terminar, clique em **OK**.

Ainda na janela **PPP**, mude para a aba **Interface** e clique no botão **L2TP Server** (servidor L2TP):

{% include image.html src='/files/2021/04/mikrotik-vpn-05.jpg' %}

Marque **Enabled** para habilitar o servidor L2TP.

Em **Authentication**, desmarque o protocolo **[PAP]** (do inglês _Password Authentication Protocol_, Protocolo de Autenticação por Senha). Esse protocolo é considerado inseguro porque envia os dados (inclusive a senha) em texto claro (não criptografado, pode ser facilmente interceptado). Portanto, é melhor não permitirmos o uso dele em nossa VPN.

Em **Use IPsec**, selecione **required** para obrigar que os clientes usem IPsec.

Em **IPsec Secret**, digite um texto que será o segredo do IPsec, também conhecido por **chave pré-compartilhada do IPsec**. Isso é uma espécie de senha que o cliente informa ao servidor ao se conectar à VPN, antes de propriamente informar o _login_ e senha do usuário. Fornece uma camada a mais de segurança. Nesse teste, vou usar `12345678`, mas claro que na verdade o ideal é usar um segredo mais seguro que esse. Quando terminar, clique em **OK**.

{% include ad2.html %}

O que falta para a VPN estar pronta é liberar as portas necessárias no _firewall_ do MikroTik.

No menu à esquerda, expanda **IP** e clique em **Firewall**. Normalmente a aba **Filter Rules** (regras de filtragem), a primeira, já vem selecionada. Certifique-se de que está nessa aba.

Clique no botão de adicionar:

{% include image.html src='/files/2021/04/mikrotik-vpn-07.jpg' %}

No campo **Chain**, selecione **input** (esse é o mesmo [conceito de _chain_ do iptables][iptables]).

Em **Protocol** (protocolo), expanda o menu e selecione **ipsec-esp**. Com isso, estamos permitindo no _firewall_ o protocolo IPsec.

Mude para a aba **Action** (ação) e no campo **Action** certifique-se de que a opção **accept** está selecionada (já vem por padrão). Quando terminar, clique em **OK**:

{% include image.html src='/files/2021/04/mikrotik-vpn-08.jpg' %}

Perceba que a regra é adicionada ao final da fila. No momento, ela é a regra de número 11.

Clique no botão de adicionar para adicionar mais uma regra.

{% include image.html src='/files/2021/04/mikrotik-vpn-09.jpg' %}

No campo **Chain**, selecione **input**.

No campo **Protocol**, expanda o menu e selecione **udp**.

No campo **Any. Port** (acredito que signifique _anywhere port_, ou seja, portas de origem ou destino), digite `1701,500,4500`. Com isso, estamos permitindo no _firewall_ as portas:

- **1701/UDP:** protocolo L2TP
- **500/UDP:** protocolo [IKE] (_Internet Key Exchange_, Troca de Chaves pela Internet)
- **4500/UDP:** protocolo IPsec NAT traversal

Mude para a aba **Action** e no campo **Action** certifique-se de que a opção **accept** está selecionada. Quando terminar, clique em **OK**. Agora temos 12 regras na fila.

Assim como o [_firewall_ iptables][iptables] do [Linux], o _firewall_ do MikroTik também analisa as regras na ordem em que foram inseridas. Por padrão, o MikroTik tem uma regra que bloqueia todo o tráfego que não vem da rede local (LAN). Porém, precisamos permitir o tráfego que vem da VPN. Para isso, temos que mover as regras recém-criadas acima dessa regra.

Identifique na fila de regras a regra que bloqueia todo o tráfego que não vem da rede local (no meu caso, ela é a regra de número 4) e mova as regras recém-criadas (no meu caso, elas são as regras de números 11 e 12) acima dessa regra:

{% include image.html src='/files/2021/04/mikrotik-vpn-10.jpg' %}

{% include image.html src='/files/2021/04/mikrotik-vpn-11.jpg' %}

## Opcional: DDNS

A MikroTik (empresa, fabricante) oferece alguns serviços na nuvem para os dispositivos RouterBOARD conectados à Internet (como esse que estou mostrando aqui), visando facilitar a configuração, a manutenção, o controle e o monitoramento desses dispositivos.

Um desses serviços é o [**DNS dinâmico** (_Dynamic DNS_ ou **DDNS**)][ddns]. Quando ativado, ele atribui um nome e domínio ao seu roteador nos servidores DNS da MikroTik, e mantém o endereço IP externo do seu roteador sempre atualizado nos registros desses servidores. Com isso, sua operadora pode mudar seu endereço IP (ocorre com frequência em casas), mas você sempre é capaz de acessar seu roteador por meio de um endereço com nome e domínio.

Ativar o DDNS não é necessário para o funcionamento da VPN, mas pode facilitar a conexão dos clientes, uma vez que passam a usar um nome em vez de um endereço IP.

Note que o DDNS, assim como a VPN, depende de o roteador ter um endereço IP público.

Caso você queira ativar o DDNS, no menu à esquerda, expanda **IP** e clique em **Cloud**. Marque a opção **DDNS Enabled** (habilitar DDNS) e clique em **OK**. Abra mais uma vez essa janela seguindo o mesmo caminho para ver o endereço atribuído ao roteador em **DNS Name**:

{% include image.html src='/files/2021/04/mikrotik-vpn-06.jpg' %}

No meu caso, o endereço ficou assim: `6bxxxxxxxxc2.sn.mynetname.net`.

Eu posso usar esse endereço para conectar os clientes ao roteador, em vez do endereço IP, que pode ser mudado com frequência pela operadora.

## Usando a VPN

Pronto! Feito isso, nossa VPN está pronta para uso e os clientes já conseguem se conectar.

Para conectar um dispositivo à VPN, siga um dos tutoriais a seguir, conforme o sistema operacional do dispositivo em questão:

- [Como conectar à VPN a partir do Windows][vpn-windows]
- [Como conectar à VPN a partir do Android][vpn-android]
- [Como conectar à VPN a partir do iOS (iPhone e iPad)][vpn-ios]

(mais tutoriais por vir)

{% capture atualizacao %}
No WinBox, você pode verificar que um cliente se conectou ao MikroTik indo em **PPP** > **Interface** ou em **Log**:

{% include image.html src='/files/2021/06/mikrotik-vpn-12.jpg' %}

{% endcapture %}

{% include update.html date="17/06/2021" message=atualizacao %}

## Referências

- [COMO CRIAR UMA VPN L2TP COM IPSEC - MIKROTIK \| LEONARDO VIEIRA][leonardo-vieira]
- [Manual:Interface/L2TP - MikroTik Wiki][mikrotik-l2tp]
- [Lista de portas dos protocolos TCP e UDP - Wikipédia][wikipedia]
- [Manual:IP/Cloud - MikroTik Wiki][mikrotik-cloud]

[mikrotik]:         {% post_url 2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa %}
[vpn]:              {% post_url 2016-06-26-como-criar-uma-vpn-pfsense-openvpn %}#o-que-é-uma-vpn
[l2tp]:             https://pt.wikipedia.org/wiki/Layer_2_Tunneling_Protocol
[ipsec]:            https://pt.wikipedia.org/wiki/IPsec
[leonardo-vieira]:  https://www.youtube.com/watch?v=uyMDvBfNMec
[safe-mode]:        {% post_url 2020-07-21-mikrotik-modo-de-seguranca-safe-mode %}
[bridge]:           {% post_url 2021-03-01-configurando-o-modem-sagemcom-fast-3486-em-modo-bridge %}
[cgnat]:            {% post_url 2020-08-14-configurando-o-modem-humax-hg100r-l4-em-modo-bridge %}#notas-sobre-carrier-grade-nat
[pap]:              https://pt.wikipedia.org/wiki/Password_authentication_protocol
[iptables]:         https://linuxkamarada.com/pt/2019/11/18/proteja-se-com-o-firewall-iptables/#conceitos-básicos
[ike]:              https://en.wikipedia.org/wiki/Internet_Key_Exchange
[linux]:            https://linuxkamarada.com/
[ddns]:             https://pt.wikipedia.org/wiki/DNS_din%C3%A2mico
[vpn-windows]:      {% post_url 2021-04-09-mikrotik-como-conectar-a-vpn-a-partir-do-windows %}
[vpn-android]:      {% post_url 2021-04-17-mikrotik-como-conectar-a-vpn-a-partir-do-android %}
[vpn-ios]:          {% post_url 2021-06-17-mikrotik-como-conectar-a-vpn-a-partir-do-ios-iphone-e-ipad %}
[mikrotik-l2tp]:    https://wiki.mikrotik.com/wiki/Manual:Interface/L2TP
[wikipedia]:        https://pt.wikipedia.org/wiki/Lista_de_portas_dos_protocolos_TCP_e_UDP
[mikrotik-cloud]:   https://wiki.mikrotik.com/wiki/Manual:IP/Cloud
