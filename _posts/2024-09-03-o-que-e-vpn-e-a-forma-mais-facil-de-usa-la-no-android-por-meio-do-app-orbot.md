---
date: '2024-09-03 11:30:00 GMT-3'
image: '/files/2024/09/tor-android.jpg'
layout: post
title: 'O que é VPN e a forma mais fácil de usá-la no Android: por meio do app Orbot'
excerpt: 'Entenda o que é VPN, porque usá-la, conheça a Rede Tor e veja como usá-la no Android por meio do app Orbot.'
---

{% include image.html src='/files/2024/09/tor-android.jpg' %}

A busca por VPNs [cresceu recentemente][poder360] no Brasil, segundo dados do [Google Trends]. Mas afinal, o que é VPN, e por que alguém iria quer usar isso?

A sigla **[VPN]** vem do inglês _Virtual Private Network_, que quer dizer **Rede Privada Virtual**. É uma tecnologia que estabelece uma conexão segura e criptografada sobre uma rede pública, menos segura, como a Internet. Ela serve para proteger seus dados e sua privacidade enquanto você navega, garantindo que suas atividades _online_ permaneçam seguras e confidenciais.

A VPN funciona assim: dois computadores pertencem, a princípio, a redes diferentes (eles podem estar em prédios, cidades ou até mesmo países diferentes, por exemplo), mas ambos estão conectados à Internet. Então, eles estabelecem na rede mundial um circuito criptografado por onde trocam informações de forma privada. Seria como uma ligação telefônica que não pudesse ser grampeada.

{% include image.html src='/files/2016/06/pfsense-vpn-02.jpg' caption='Apesar de estarem conectados à Internet, dois computadores em uma VPN se comunicam de forma privada' %}

Para quem usa esses computadores, é imperceptível que eles estão distantes. É como se eles estivessem conectados diretamente por um cabo, apesar de esse cabo não existir de verdade (por isso, essa rede é dita **virtual**). E a comunicação, apesar de ocorrer pela Internet, não pode ser lida pelos demais computadores da rede, porque esses dois computadores usam criptografia para se comunicar (por isso, rede **privada**). Porque a informação trafega por esse circuito criptografado que não pode ser interceptado, a VPN também é conhecida como **túnel**.

{% include image.html src='/files/2016/06/pfsense-vpn-03.png' caption='Um túnel é bem assim: só quem está dentro dele vê o que por ele passa' %}

Um uso prático de VPNs é burlar censuras a _sites_. Normalmente, quando acessamos um _site_, nossa comunicação com o servidor desse _site_ é roteada pela infraestrutura de rede da operadora, que pode estar bloqueando o acesso ao _site_ (por ordem do governo, por exemplo). Tem VPNs que permitem que o computador na outra ponta, que pode estar em outro país, faça o trabalho do roteador da operadora, então conseguimos, assim, acessar o _site_ como se estivéssemos em outro país.

{% include image.html src='/files/2015/12/vpn.png' %}

Essas VPNs são usadas sobretudo em [países com governos autoritários][china] em que os cidadãos são proibidos de ter acesso a _sites_ ou aplicativos considerados impróprios pelo ditador no poder. É preocupante que a busca por VPNs esteja crescendo no Brasil, assim como a menção ao nosso país na [Declaração de Westminster], assinada por vários ativistas defensores da [liberdade de expressão], incluindo [Julian Assange], [Edward Snowden], [Glenn Greenwald] e [Jordan Peterson].

Se você sente necessidade de usar uma VPN, quero te apresentar hoje uma que é baseada em [_software_ livre][free-sw] e que pode ser usada gratuitamente por qualquer pessoa em qualquer lugar do mundo.

{% include image.html src='/files/2024/09/tor.svg' %}

O **[Projeto Tor]** (sigla de _The Onion Router_, "o roteador cebola", em uma tradução livre) mantém uma rede de túneis ao redor do mundo -- a **Rede Tor** -- pela qual trafegam dados de seus usuários de forma anônima, criptografada, privada, segura e livre de censura. A menção à cebola vem do fato de que a informação dentro dessa rede circula de forma compartimentada. A Rede Tor emprega várias camadas de criptografia para garantir que cada computador no meio do caminho só saiba o suficiente para levar a informação adiante até o próximo:

{% include image.html src='/files/2024/09/how-tor-works.png' caption='Fonte da imagem: [manual do Navegador Tor](https://tb-manual.torproject.org/pt-BR/about/)' %}

A forma mais fácil de se conectar à Rede Tor e usá-la no [Android] é por meio do aplicativo **[Orbot]**, que não faz parte oficialmente do Projeto Tor, mas é [recomendado] por este, porque é desenvolvido por [algumas][orbot-team] das mesmas [pessoas que participam do Projeto Tor][tor-people]. Após se conectar à Rede Tor, o Orbot faz com que o tráfego de Internet de todos os aplicativos do Android passem por dentro da rede Tor.

A seguir, você verá como instalar e usar o Orbot no Android.

**Nota:** se, por um acaso, você procurava instruções para outro sistema, mas caiu nesta página, consulte versões deste mesmo tutorial para outros sistemas:

- Windows: [O que é VPN e a forma mais fácil de usá-la no Windows: por meio do Navegador Tor]({% post_url 2024-09-03-o-que-e-vpn-e-a-forma-mais-facil-de-usa-la-no-windows-por-meio-do-navegador-tor %})
- Linux: [O que é VPN e a forma mais fácil de usá-la no Linux: por meio do Navegador Tor - Linux Kamarada](https://linuxkamarada.com/pt/2024/09/02/o-que-e-vpn-e-a-forma-mais-facil-de-usa-la-no-linux-por-meio-do-navegador-tor/)

## Instalando o Orbot

Para instalar o Orbot no Android, você pode abrir o aplicativo da **Play Store** e pesquisar por [**Orbot**][play-store], ou usar o _link_ a seguir:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://play.google.com/store/apps/details?id=org.torproject.android" title="">
                <img src="/assets/img/download-google-play.png" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

## Iniciando o Orbot

Para iniciar o Orbot no Android, abra o menu de aplicativos e toque em seu ícone:

{% include image.html src='/files/2024/09/tor-android-01.jpg' %}

Opcionalmente (mas eu recomendo), permita que o Orbot mostre notificações:

{% include image.html src='/files/2024/09/tor-android-02.jpg' %}

Essa é a tela inicial do Orbot, ainda não conectado à Rede Tor. Portanto, a VPN ainda não está pronta para ser usada. Toque no botão **Iniciar a VPN**:

{% include image.html src='/files/2024/09/tor-android-03.jpg' %}

Aguarde a conexão com a Rede Tor ser estabelecida:

{% include image.html src='/files/2024/09/tor-android-04.jpg' %}

A tela seguinte indica que o Orbot está **Conectado** à Rede Tor e, portanto, a VPN está pronta para ser usada:

{% include image.html src='/files/2024/09/tor-android-05.jpg' %}

Note que você não precisa fazer nenhuma configuração adicional no sistema ou nos aplicativos para que eles passem a trafegar seus dados pela Rede Tor.

## Testando a conexão com a Rede Tor

Sempre antes de começar a usar a Rede Tor, convém testar se o sistema está de fato conectado à Rede Tor. Para isso, usando o seu navegador preferido (por exemplo, eu usei o [Firefox]), acesse:

- <https://check.torproject.org/>

{% include image.html src='/files/2024/09/tor-android-06.jpg' %}

A página deve informar: **"Parabéns. Este navegador está configurado para usar Tor."** (ou o equivalente a isso em inglês, como na imagem) Se essa mensagem aparece para você, já é seguro usar a Rede Tor para acessar os _sites_ que você precisa acessar.

Se aparecer uma mensagem diferente dessa, seu celular não está conectado adequadamente à Rede Tor e, portanto, a VPN não está pronta para ser usada. Navegar assim é inseguro. Para mais informações sobre o que pode ser feito para solucionar isso, consulte o [suporte] da Rede Tor.

Conforme você navega na Internet usando aplicativos, perceba pela notificação do Orbot que há tráfego de rede passando pelo túnel estabelecido:

{% include image.html src='/files/2024/09/tor-android-07.jpg' %}

## Alterando a saída

Por padrão, o túnel criado pelo Orbot e pela Rede Tor pode sair por qualquer país do mundo, escolhido aleatoriamente.

Opcionalmente, você pode, na tela inicial do Orbot, tocar em **Altere a saída** e selecionar por qual país deseja sair do túnel:

{% include image.html src='/files/2024/09/tor-android-08.jpg' %}

# Tunelando apenas alguns aplicativos

Por padrão, o Orbot roteia todo o tráfego de rede do sistema operacional Android (incluindo o tráfego de rede dos aplicativos) para dentro do túnel.

Se você deseja que somente alguns aplicativos usem o túnel, enquanto outros aplicativos e o sistema usam a conexão convencional, na tela inicial do Orbot, toque em **Escolha os aplicativos** e selecione quais aplicativos devem ter seu tráfego de rede redirecionado para a Rede Tor:

{% include image.html src='/files/2024/09/tor-android-09.jpg' %}

Note que você não precisa fazer nenhuma configuração adicional nesses aplicativos para que eles passem a trafegar seus dados pela Rede Tor.

## Encerrando o Orbot

Quando não precisar usar mais a Rede Tor, volte ao Orbot e toque em **Desligar o Tor**.

## Leitura adicional recomendada

Conhecimento é poder. E o que você leu neste artigo é o tipo de conhecimento que você precisa ter antes que precise usar de fato. Recomendo que você estude o material dos _sites_ a seguir, que podem te ajudar a navegar com mais segurança e privacidade e menos censura:

- [Security in-a-box - ferramentas e táticas de segurança digital](https://securityinabox.org/pt/)
- [Privacidade.Digital – Criptografia Contra a Vigilância Global em Massa](https://www.privacidade.digital/)
- [Guia de Autodefesa contra Vigilância da Electronic Frontier Foundation (EFF)](https://ssd.eff.org/pt-br/)

[poder360]:                     https://www.poder360.com.br/poder-justica/buscas-por-vpn-no-google-disparam-com-decisao-de-moraes/
[Google Trends]:                https://trends.google.com.br/trends/explore?date=2024-08-25%202024-09-01&geo=BR&q=vpn&hl=pt
[VPN]:                          https://pt.wikipedia.org/wiki/Rede_privada_virtual
[china]:                        http://tecnologia.terra.com.br/internet/pai-da-censura-na-china-e-surpreendido-burlando-a-mesma-em-publico,1d6ba1d9b58468d4df30fb84daf29ee6e3c193t0.html
[Declaração de Westminster]:    https://westminsterdeclaration.org/portugues
[liberdade de expressão]:       https://linuxkamarada.com/pt/2021/10/03/software-livre-e-liberdade-de-expressao/
[Julian Assange]:               https://pt.wikipedia.org/wiki/Julian_Assange
[Edward Snowden]:               https://pt.wikipedia.org/wiki/Edward_Snowden
[Glenn Greenwald]:              https://pt.wikipedia.org/wiki/Glenn_Greenwald
[Jordan Peterson]:              https://www.jordanbpeterson.com/about/
[free-sw]:                      https://www.gnu.org/philosophy/free-sw.pt-br.html
[Projeto Tor]:                  https://www.torproject.org/
[Android]:                      https://www.android.com/intl/pt_br/
[Orbot]:                        https://orbot.app/
[recomendado]:                  https://support.torproject.org/pt-BR/tormobile/#tormobile_tormobile-1
[orbot-team]:                   https://guardianproject.info/team/
[tor-people]:                   https://www.torproject.org/about/people/
[play-store]:                   https://play.google.com/store/apps/details?id=org.torproject.android
[Firefox]:                      https://play.google.com/store/apps/details?id=org.mozilla.firefox
[suporte]:                      https://support.torproject.org/pt-BR/
