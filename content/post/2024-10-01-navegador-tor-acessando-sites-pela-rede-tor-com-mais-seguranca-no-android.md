---
date: "2024-10-01T22:50:00Z"
excerpt: Vimos o que é VPN, Rede Tor e como usá-la por meio do Orbot. Como nos dispositivos
  móveis é mais comum usarmos apps, o Orbot é a melhor forma de começar a usar a Rede
  Tor no Android. Mas para acessar sites, o recomendado é que você use o Navegador
  Tor. Veja como.
image: /files/2024/10/tor-browser-android.jpg
title: 'Navegador Tor: acessando sites pela Rede Tor com mais segurança no Android'
---

{% include image.html src='/files/2024/10/tor-browser-android.jpg' %}

Vimos o que é **[VPN]**, **[Rede Tor][VPN]** e a forma mais fácil de usá-la no [Android], que é por meio do _app_ **[Orbot][VPN]**. Esse aplicativo roteia todo o tráfego de Internet de todos os aplicativos por dentro do túnel da Rede Tor. Como nos dispositivos móveis é mais comum usarmos aplicativos, em vez de acessar _sites_ pelo navegador, o _app_ Orbot é a melhor forma de começar a usar a Rede Tor no Android.

No entanto, se você precisa acessar um _site_ por meio da Rede Tor no seu dispositivo móvel com Android, [não é recomendado][tor-with-a-browser] usar um navegador comum, como o [Chrome] ou o [Firefox], mesmo que seu tráfego esteja sendo redirecionado pelo Orbot. Nesse caso, é preferível que você use o **[Navegador Tor]** (_Tor Browser_), uma versão modificada do Firefox que não apenas só trafega dados dentro da Rede Tor, como também adiciona melhorias relacionadas a privacidade.

A seguir, você verá como instalar e usar o Navegador Tor no Android.

## Instalando o Navegador Tor

Para instalar o Navegador Tor (_Tor Browser_) no Android, você pode abrir o aplicativo da **Play Store** e pesquisar por **[Navegador Tor]**, ou usar o _link_ a seguir:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://play.google.com/store/apps/details?id=org.torproject.torbrowser" title="">
                <img src="/assets/img/download-google-play.png" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

## Iniciando o Navegador Tor

Para iniciar o Navegador Tor no Android, abra o menu de aplicativos e toque no ícone do **Tor Browser**:

{% include image.html src='/files/2024/10/tor-browser-android-01.jpg' %}

Essa é a tela inicial do Navegador Tor, ainda não conectado à Rede Tor e, portanto, ainda não pronto para uso:

{% include image.html src='/files/2024/10/tor-browser-android-02.jpg' %}

Toque em **Conectar**. Aguarde a conexão com a Rede Tor ser estabelecida:

{% include image.html src='/files/2024/10/tor-browser-android-03.jpg' %}

A tela seguinte indica que o Navegador Tor está conectado à Rede Tor e, portanto, pronto para ser usado:

{% include image.html src='/files/2024/10/tor-browser-android-04.jpg' %}

## Testando a conexão com a Rede Tor

Sempre antes de começar a usar o Navegador Tor, convém testar se ele está de fato conectado à Rede Tor. Para isso, acesse:

- <https://check.torproject.org/>

{% include image.html src='/files/2024/10/tor-browser-android-05.jpg' %}

A página deve informar: **"Parabéns. Este navegador está configurado para usar Tor."** (ou o equivalente a isso em inglês, como na imagem) Se essa mensagem aparece para você, já é seguro usar o Navegador Tor para acessar os _sites_ que você precisa acessar.

Se aparecer uma mensagem diferente dessa, o Navegador Tor não está conectado adequadamente à Rede Tor e, portanto, não está pronto para uso. Navegar assim é inseguro. Para mais informações sobre o que pode ser feito para solucionar isso, consulte o [manual] ou o [suporte] do Navegador Tor.

## Conclusão

Para uma experiência mais completa da Rede Tor no Android, tenha os dois instalados no seu dispositivo: o [Orbot][VPN], para tunelar todos os aplicativos, e o Navegador Tor, para acessar _sites_ especificamente.

Não encerre o assunto por aqui. Pesquise sobre VPN, inclusive sobre VPNs alternativas ao Tor, porque pode ser que você venha a precisar delas.

Se você está recorrendo ao Tor para vencer censura, observe que pode acontecer de seu país passar a censurar a Rede Tor. Talvez você queira consultar antecipadamente a seção sobre [Censura] da documentação do Tor.

[VPN]:                  {{% ref "post/2024-09-03-o-que-e-vpn-e-a-forma-mais-facil-de-usa-la-no-android-por-meio-do-app-orbot" %}}
[Android]:              https://www.android.com/intl/pt_br/
[tor-with-a-browser]:   https://support.torproject.org/pt-BR/tbb/#tbb_tbb-9
[Chrome]:               https://play.google.com/store/apps/details?id=com.android.chrome
[Firefox]:              https://play.google.com/store/apps/details?id=org.mozilla.firefox
[Navegador Tor]:        https://play.google.com/store/apps/details?id=org.torproject.torbrowser
[manual]:               https://tb-manual.torproject.org/pt-BR/running-tor-browser/
[suporte]:              https://support.torproject.org/pt-BR/
[Censura]:              https://support.torproject.org/pt-BR/censorship/