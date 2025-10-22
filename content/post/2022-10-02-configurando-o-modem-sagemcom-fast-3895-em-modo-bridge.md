---
date: "2022-10-02T17:30:00Z"
excerpt: Uma bridge (“ponte”, em inglês) é um dispositivo de rede que une duas redes
  a nível de camada 2 do modelo OSI (camada de enlace). Normalmente, o modem da operadora
  atua como roteador (router), ou seja, atua na camada 3 (camada de rede), separando
  a rede de casa e a rede da operadora em espaços de endereços IP diferentes.
image: /files/2022/10/modem-bridge-sagemcom-fast-3895.jpg
published: true
title: Configurando o modem Sagemcom F@ST 3895 em modo bridge
---

{% capture revisao_links_quebrados %}

O _site_ passou por uma revisão de _links_ quebrados. Alguns _links_ nessa publicação podem ter sido removidos ou atualizados.

{% endcapture %}

{% include update.html date="02/08/2023" message=revisao_links_quebrados %}

Uma _**[bridge]**_ ("ponte", em inglês) é um dispositivo de rede que une duas redes a nível de camada 2 do [modelo OSI][osi] (camada de enlace). Normalmente, o modem da operadora atua como **[roteador]** (_router_), ou seja, atua na camada 3 (camada de rede), separando a rede de casa e a rede da operadora em espaços de endereços IP diferentes.

Se você tem outro roteador, como o [MikroTik] do qual já falei aqui em alguns _posts_, pode ser interessante mudar o modem da operadora para o modo _bridge_, o que faz com que seu outro roteador entre em contato direto com a rede da operadora, recebendo um endereço IP desta, e sendo o único responsável por gerenciar toda a rede da sua casa.

Tentando usar uma linguagem menos técnica, tornar o modem da operadora uma _bridge_ na prática seria como anulá-lo, ele passa a fazer apenas o "leva e traz" de dados na rede, enquanto quem faz o "trabalho pesado" mesmo é o roteador conectado a ele.

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-fast-3895.jpg" %}

Se você, assim como eu, confia mais no seu roteador do que no equipamento da operadora, configurar o modem em modo _bridge_ pode trazer mais segurança para a rede da sua casa.

Hoje eu sou cliente da [Claro] e tenho em minha casa o modem Sagemcom F@ST 3895 e o roteador [MikroTik hAP ac³][mikrotik-hap-ac3], irmão mais novo do [MikroTik anterior][mikrotik].

Vou mostrar como deixar o modem Sagemcom em modo _bridge_ e o MikroTik como único roteador da casa.

<div class="alert alert-warning" role="alert">
{% markdown %}
Observe que as instruções de como configurar o modem em modo _bridge_ podem variar de modem para modem. Se seu modem é diferente, pesquise na Internet instruções específicas para ele. Observe também que esse procedimento pode não ser suportado pela operadora. Por isso, é importante que o primeiro passo seja fazer _backup_ das configurações do modem. Pode ser que você precise devolvê-las caso precise acionar o suporte da operadora no futuro.
{% endmarkdown %}
</div>

## Ponto de partida

Conecte seu roteador ao modem da operadora, como na imagem acima.

Conecte seu computador ao seu roteador.

Caso seu roteador seja um MikroTik como o meu e você tenha caído nessa página de paraquedas, talvez queira dar uma conferida nos textos anteriores:

- [Primeiros passos com o MikroTik hAP ac: roteador profissional para a rede de casa][mikrotik]
- [MikroTik: modo de segurança (Safe Mode)][safe-mode]

## Acessando a interface web do modem

Abra o navegador e acesse a interface _web_ do _modem_ da operadora. O endereço IP, assim como o _login_ e senha que você vai usar para acessar essa interface comumente podem ser encontrados em uma etiqueta no próprio modem ou fazendo uma pesquisa na Internet.

No caso do modem Sagemcom F@ST 3895, o endereço IP é `192.168.0.1`:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-01.jpg" %}

O _login_ e a senha estavam em uma etiqueta no modem.

A tela inicial resume as informações da conexão e traz as configurações mais comuns, que são o nome e a senha da rede Wi-Fi.

### Fazendo backup da configuração atual

No menu à esquerda, expanda **Administração** e clique em **Backup**:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-02.jpg" %}

Clique em **Backup** para baixar a configuração atual do modem:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-03.jpg" %}

O navegador vai baixar um arquivo chamado `device.cfg`. Salve esse arquivo em um local seguro, que você se lembre depois, pro caso de precisar restaurar o _backup_.

### Desativando a rede Wi-Fi do modem

No menu à esquerda, expanda **Wi-Fi** e clique em **Rádio**.

Clique na rede de **2.4GHz** e desmarque a opção **Ativar**:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-04.jpg" %}

Desça até o final da página e clique em **Aplicar Ajustes**:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-05.jpg" %}

Depois, faça o mesmo para a rede de **5GHz**.

### Ativando o modo bridge

No menu à esquerda, expanda **Redes** e clique em **Configurações Básicas**.

Role a página até encontrar a opção **Tipo de conexão WAN** e defina-a como **Modo Bridge**:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-06.jpg" %}

Chegamos ao ponto de não retorno. Clique em **Aplicar Ajustes** para ativar o modo _bridge_.

O modem será reiniciado. Você pode fechar a janela do navegador.

Abra uma janela do terminal e deixe um **[ping]** rodando para algum endereço IP na Internet (por exemplo, o [servidor de DNS público do Google][google-public-dns], 8.8.8.8). Observando o comando **ping**, é possível saber quando o modem terminou de reiniciar e a conexão com a Internet voltou:

```
$ ping 8.8.8.8
...
De 10.0.0.1 icmp_seq=156 Rede de destino inalcançável
64 bytes de 8.8.8.8: icmp_seq=157 ttl=112 tempo=36.6 ms
64 bytes de 8.8.8.8: icmp_seq=158 ttl=112 tempo=40.2 ms
64 bytes de 8.8.8.8: icmp_seq=159 ttl=112 tempo=41.3 ms
64 bytes de 8.8.8.8: icmp_seq=160 ttl=112 tempo=38.0 ms
```

## Verificando a conexão do roteador

Se seu roteador estava configurado para obter [DHCP], deve ter recebido um endereço IP diretamente da rede da operadora (não mais do modem, que agora está em modo _bridge_).

No caso do MikroTik, para verificar o endereço IP obtido, inicie o [WinBox][mikrotik]. Na janela do WinBox, à esquerda, expanda o menu **IP**, depois clique no item **Addresses** (endereços):

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-07.jpg" %}

No meu exemplo, o MikroTik obteve o endereço IP `100.64.174.102/19`:

{% include image.html src="/files/2022/10/modem-bridge-sagemcom-08.jpg" %}

(se a notação `/19` é nova para você — eu só a conheci quando tive a oportunidade de trabalhar com redes — ela quer dizer que os primeiros 19 _bits_ do endereço IP identificam a rede, para mais informações procure saber sobre [CIDR])

## Acessando a interface web da bridge

No futuro, caso precise usar a interface _web_ do modem, que agora está em modo _bridge_ — por exemplo, para restaurar o _backup_ das configurações do modem, desativando assim o modo _bridge_ — abra o navegador e acesse o endereço IP `192.168.100.1`.

Não sei como a _bridge_ responde por esse endereço IP, dado que ela não atua na camada 3 (camada de rede) do modelo OSI. Só sei que funciona. Parece mágica...

## Notas sobre carrier-grade NAT

O endereço IP `100.64.174.102/19` pertence à rede `100.64.160.0`. Não se trata de um endereço IP "real" (ou público), como seria de se esperar há alguns anos, mas de um [endereço IP privado][rede-privada] dentro da rede da operadora. Endereços IP como esse passaram a ser distribuídos para roteadores domésticos após o [esgotamento dos endereços IPv4][exaustao-ipv4]. As operadoras adotaram uma prática chamada de [_carrier-grade_ NAT (CGNAT)][cgnat], que reserva o bloco `100.64.0.0/10` para a atribuição de endereços IP às residências.

A _carrier-grade_ NAT impossibilita a hospedagem de serviços e o redirecionamento de portas (com isso, você não pode servir um _site_ para o mundo a partir do seu computador de casa, por exemplo), mas é um "mal necessário" para viabilizar o uso de redes IPv4 hoje em dia, dado que os endereços IPv4 já se esgotaram. Caso você precise de um endereço IP público, uma alternativa é verificar junto à operadora a possibilidade de alugar um (a um custo adicional). Outra alternativa é ativar o [IPv6], que veremos oportunamente como fazer.

## Por que eu uso o modo bridge

Em 2015, eu tive um problema com o modem ARRIS TG862 da NET: um vírus invadiu o modem e mudou os endereços dos servidores DNS. Com isso, vários _sites_ passaram a exibir anúncios bastante irritantes e inconvenientes em russo, como os das imagens abaixo.

{% include image.html src="/files/2020/08/arris-tg862-malware-1.jpg" caption="(fonte da imagem: Clube do Hardware)" %}

{% include image.html src="/files/2020/08/arris-tg862-malware-2.jpg" caption="(fonte da imagem: [Comunidade do Hardware.com.br](https://www.hardware.com.br/comunidade/adware-redirecionando/1372966/))" %}

Isso acontecia porque o servidor DNS farsante redirecionava as requisições ao [Google Analytics][analytics] (um serviço usado por muitos _sites_) para outro servidor que não era o do [Google], fazendo com que o navegador baixasse o _script_ dos anúncios em russo, em vez do _script_ requisitado pelo _site_, que era o do Google Analytics.

A solução foi entrar na interface _web_ do modem, mudar a senha de administrador e mudar a configuração de DNS. Depois disso, os anúncios em russo pararam de aparecer.

Se tiver curiosidade de ler mais sobre o ocorrido, aqui vão alguns _links_ da época:

- [Novo malware sequestra roteador e enche sites de propagandas - TecMundo][malware-1]
- [Android "infectado" e anúncios "estranhos" são sinais de ataque a roteador \| G1 - Tecnologia e Games][malware-2]
- [Adware Russo que nenhum antivírus elimina - Invasões e infecções - Clube do Hardware][malware-3]
- [Abrindo propagandas e links sozinho - Redes e Internet - Clube do Hardware][malware-4]
- [Adware me enlouquecendo e redirecionando para sites russos - Comunidade do Hardware.com.br][malware-5]
- [This router hack is injecting ads and porn into random websites - The Verge][malware-6]
- [Ad-Fraud Malware Hijacks Router DNS – Injects Ads Via Google Analytics \| University of South Wales:  Cyber University][malware-7]

Desde 2016, quando comprei o MikroTik, já me mudei algumas vezes e sempre o deixo como o roteador da casa, sempre configuro o modem da operadora em modo _bridge_. Com isso, tenho maior controle sobre a rede da minha casa e mais segurança.

[bridge]:               https://pt.wikipedia.org/wiki/Bridge_(redes_de_computadores)
[osi]:                  https://pt.wikipedia.org/wiki/Modelo_OSI
[roteador]:             https://pt.wikipedia.org/wiki/Roteador
[mikrotik]:             {% post_url 2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa %}
[claro]:                https://www.claro.com.br/
[mikrotik-hap-ac3]:     https://mikrotik.com/product/hap_ac3
[safe-mode]:            {% post_url 2020-07-21-mikrotik-modo-de-seguranca-safe-mode %}
[ping]:                 https://man7.org/linux/man-pages/man8/ping.8.html
[google-public-dns]:    https://developers.google.com/speed/public-dns/docs/using
[dhcp]:                 https://pt.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol
[cidr]:                 https://www.hardware.com.br/dicas/entendendo-cidr.html
[rede-privada]:         https://pt.wikipedia.org/wiki/Rede_privada
[exaustao-ipv4]:        https://pt.wikipedia.org/wiki/Exaust%C3%A3o_do_IPv4
[cgnat]:                https://pt.wikipedia.org/wiki/Carrier_Grade_NAT
[ipv6]:                 http://ipv6.br/
[analytics]:            https://analytics.google.com/
[google]:               https://google.com/
[malware-1]:            https://www.tecmundo.com.br/malware/77194-novo-malware-sequestra-roteador-enche-sites-propagandas.htm
[malware-2]:            http://g1.globo.com/tecnologia/blog/seguranca-digital/post/android-infectado-e-anuncios-estranhos-sao-sinais-de-ataque-roteador.html
[malware-3]:            #
[malware-4]:            https://www.clubedohardware.com.br/topic/1116552-abrindo-propagandas-e-links-sozinho/
[malware-5]:            https://www.hardware.com.br/comunidade/adware-redirecionando/1372966/
[malware-6]:            https://www.theverge.com/2015/3/25/8290277/router-hack-adware-porn-security-ara-labs
[malware-7]:            https://uwnthesis.wordpress.com/2015/03/26/ad-fraud-malware-hijacks-router-dns-injects-ads-via-google-analytics/
