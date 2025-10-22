---
date: "2024-10-02T21:00:00Z"
excerpt: Vimos o que é VPN, Rede Tor e como usá-la por meio do Orbot. Como nos dispositivos
  móveis é mais comum usarmos apps, o Orbot é a melhor forma de começar a usar a Rede
  Tor no iOS. Mas para acessar sites, o recomendado é que você use o Onion Browser.
  Veja como.
image: /files/2024/10/onion-browser.jpg
title: 'Onion Browser: acessando sites pela Rede Tor com mais segurança no iOS'
---

{% include image.html src='/files/2024/10/onion-browser.jpg' %}

Vimos o que é **[VPN]**, **[Rede Tor][VPN]** e a forma mais fácil de usá-la no [iOS], que é por meio do _app_ **[Orbot][VPN]**. Esse aplicativo roteia todo o tráfego de Internet de todos os aplicativos por dentro do túnel da Rede Tor. Como nos dispositivos móveis é mais comum usarmos aplicativos, em vez de acessar _sites_ pelo navegador, o _app_ Orbot é a melhor forma de começar a usar a Rede Tor no iOS.

No entanto, se você precisa acessar um _site_ por meio da Rede Tor no seu [iPhone] ou [iPad], [não é recomendado][tor-with-a-browser] usar um navegador comum, como o [Safari], mesmo que seu tráfego esteja sendo redirecionado pelo Orbot. Nesse caso, é [recomendado] que você use o **[Onion Browser]**, que é um navegador baseado no [WebKit] (mesma tecnologia por trás do Safari) que só trafega dados dentro da Rede Tor e também adiciona melhorias relacionadas a privacidade.

A seguir, você verá como instalar e usar o Onion Browser no iOS.

## Instalando o Onion Browser

Para instalar o Onion Browser no iOS, você pode abrir a **App Store** e pesquisar por **[Onion Browser][app-store]**, ou usar o _link_ a seguir:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://apps.apple.com/us/app/onion-browser/id519296448" title="">
                <img src="/assets/img/app-store-pt.svg" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

Note que o Onion Browser requer que o Orbot também esteja instalado. Se você precisar de ajuda com a instalação e uso do Orbot, consulte:

- [O que é VPN e a forma mais fácil de usá-la no iOS: por meio do app Orbot][VPN]

## Iniciando o Onion Browser

Antes de iniciar o Onion Browser, inicie o Orbot e conecte-se à Rede Tor.

Depois disso, para iniciar o Onion Browser, toque em seu ícone na tela de início:

{% include image.html src='/files/2024/10/onion-browser-01.jpg' %}

No primeiro uso, o navegador apresenta uma mensagem de boas vindas. Toque em **Próximo**:

{% include image.html src='/files/2024/10/onion-browser-02.jpg' %}

Também no primeiro uso, o Onion Browser explica que precisa ser usado junto do Orbot. Toque em **Solicitar acesso** para configurar essa integração:

{% include image.html src='/files/2024/10/onion-browser-03.jpg' %}

O aplicativo do Orbot é aberto. Toque em **Subvenção**:

{% include image.html src='/files/2024/10/onion-browser-04.jpg' %}

De volta ao Onion Browser, ele mostra sua tela inicial e está pronto para ser usado:

{% include image.html src='/files/2024/10/onion-browser-05.jpg' %}

## Testando a conexão com a Rede Tor

Sempre antes de começar a usar o Onion Browser, convém testar se ele está de fato conectado à Rede Tor. Para isso, acesse:

- <https://check.torproject.org/>

{% include image.html src='/files/2024/10/onion-browser-06.jpg' %}

A página deve informar: **"Parabéns. Este navegador está configurado para usar Tor."** (ou o equivalente a isso em inglês, como na imagem) Se essa mensagem aparece para você, já é seguro usar o Onion Browser para acessar os _sites_ que você precisa acessar.

Se aparecer uma mensagem diferente dessa, o Onion Browser não está conectado adequadamente à Rede Tor e, portanto, não está pronto para uso. Navegar assim é inseguro. Para mais informações sobre o que pode ser feito para solucionar isso, consulte o [suporte] da Rede Tor.

## Conclusão

Para uma experiência mais completa da Rede Tor no iOS, tenha os dois instalados no seu dispositivo: o [Orbot][VPN], para tunelar todos os aplicativos, e o Onion Browser, para acessar _sites_ especificamente.

Não encerre o assunto por aqui. Pesquise sobre VPN, inclusive sobre VPNs alternativas ao Tor, porque pode ser que você venha a precisar delas.

Se você está recorrendo ao Tor para vencer censura, observe que pode acontecer de seu país passar a censurar a Rede Tor. Talvez você queira consultar antecipadamente a seção sobre [Censura] da documentação do Tor.

[VPN]:                  {% post_url 2024-09-03-o-que-e-vpn-e-a-forma-mais-facil-de-usa-la-no-ios-por-meio-do-app-orbot %}
[iOS]:                  https://www.apple.com/br/ios/
[iPhone]:               https://www.apple.com/br/iphone/
[iPad]:                 https://www.apple.com/br/ipad/
[tor-with-a-browser]:   https://support.torproject.org/pt-BR/tbb/#tbb_tbb-9
[Safari]:               https://apps.apple.com/br/app/safari/id1146562112
[recomendado]:          https://support.torproject.org/pt-BR/tormobile/#tormobile_tormobile-3
[Onion Browser]:        https://onionbrowser.com/
[WebKit]:               https://webkit.org/
[app-store]:            https://apps.apple.com/br/app/onion-browser/id519296448
[suporte]:              https://support.torproject.org/pt-BR/
[Censura]:              https://support.torproject.org/pt-BR/censorship/