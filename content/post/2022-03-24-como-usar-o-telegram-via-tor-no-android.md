---
date: "2022-03-24T09:50:00Z"
image: /files/2022/03/telegram-tor-android.png
title: Como usar o Telegram via Tor no Android
---

{% include image.html src='/files/2022/03/telegram-tor-android.png' %}

Se por qualquer motivo você for impedido de usar o [Telegram] -- por exemplo, se você está de mudança ou viajando para um dos [países que censuram o Telegram][telegram-censorship] -- você verá hoje nessa dica como pode usá-lo por meio da [Rede Tor] no [Android].&nbsp;

[Telegram]:             https://telegram.org/
[telegram-censorship]:  https://en.wikipedia.org/wiki/Government_censorship_of_Telegram_Messenger
[Rede Tor]:             https://www.torproject.org/
[Android]:              https://www.android.com/

{% capture outros_sos %}

Se, por um acaso, você procurava instruções para outro sistema operacional, mas caiu nessa página, consulte os _links_ a seguir:

- Windows: [Como usar o Telegram via Tor no Windows][windows]
- iOS (iPhone e iPad): [Como usar o Telegram via Tor no iOS (iPhone e iPad)][ios]
- Linux: [Dica: como usar o Telegram via Tor no Linux - Linux Kamarada][linux]

[windows]: {{% ref "post/2022-03-23-como-usar-o-telegram-via-tor-no-windows" %}}
[ios]: {{% ref "post/2022-03-29-como-usar-o-telegram-via-tor-no-ios-iphone-e-ipad" %}}
[linux]: https://linuxkamarada.com/pt/2022/02/26/dica-como-usar-o-telegram-via-tor/

{% endcapture %}

{% include update.html date="29/03/2022" message=outros_sos %}

Infelizmente, o Brasil chegou a ser adicionado à [lista de países que censuram o Telegram][telegram-censorship], porque houve uma ordem judicial para bloquear o Telegram na sexta-feira passada, [18 de março de 2022][tecmundo-1]. Mas, felizmente, essa ordem foi revogada 2 dias depois, no [domingo 20][tecmundo-2]. No momento em que escrevo esta dica, o uso do Telegram é, legalmente falando, permitido no Brasil, e espero que continue assim.

[tecmundo-1]: https://www.tecmundo.com.br/software/235647-telegram-ministro-alexandre-moraes-determina-banimento-app.htm
[tecmundo-2]: https://www.tecmundo.com.br/internet/235684-telegram-liberado-brasil-cumprir-ordens-moraes.htm

O [Projeto Tor][Rede Tor] (sigla de _The Onion Router_, "o roteador cebola", em uma tradução livre) mantém uma rede de túneis ao redor do mundo -- a Rede Tor -- pela qual trafegam dados de seus usuários de forma anônima, criptografada, privada, segura e livre de censura. Usando a Rede Tor, você navega sem ser identificado ou rastreado. Para os _sites_, seu endereço IP aparece diferente, como se estivesse em outro país.

A forma mais fácil de se conectar à Rede Tor no Android é usar o aplicativo [Navegador Tor] (_Tor Browser_), que é uma versão do Mozilla Firefox modificada para trafegar dados somente dentro da Rede Tor. Ao se conectar à Rede Tor, o Navegador Tor disponibiliza uma porta que pode ser usada como _proxy_ para conectar também outros aplicativos à Rede Tor.

[Navegador Tor]: https://www.torproject.org/download/

Caso você ainda não tenha o aplicativo do **Telegram** para Android, você pode instalá-lo por meio da Google Play:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://play.google.com/store/apps/details?id=org.telegram.messenger" title="">
                <img src="/assets/img/download-google-play.png" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

Ou pode baixá-lo diretamente do [_site_ do Telegram (como APK)][apk-telegram].

[apk-telegram]: https://telegram.org/android

Já o **Navegador Tor** também pode ser instalado pela Google Play:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://play.google.com/store/apps/details?id=org.torproject.torbrowser" title="">
                <img src="/assets/img/download-google-play.png" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

Também pode ser instalado pela loja [F-Droid] ou baixado diretamente do [_site_ do Projeto Tor (como APK)][apk-tor].

[F-Droid]: https://support.torproject.org/tormobile/tormobile-7/
[apk-tor]: https://www.torproject.org/download/#android

Para acessar o Telegram via Tor, primeiro abra o Navegador Tor e toque em **Conectar**:

{% include image.html src='/files/2022/03/telegram-tor-android-01.jpg' %}

Aguarde-o conectar à Rede Tor e estar pronto para uso:

{% include image.html src='/files/2022/03/telegram-tor-android-02.jpg' %}

Certifique-se de que o navegador está de fato conectado à Rede Tor acessando:

- [https://check.torproject.org/](https://check.torproject.org/)

{% include image.html src='/files/2022/03/telegram-tor-android-03.jpg' %}

Agora inicie o Telegram, abra o "menu hamburguer" (ícone com três linhas horizontais, no canto superior esquerdo da tela) e toque em **Configurações**:

{% include image.html src='/files/2022/03/telegram-tor-android-04.jpg' %}

Nas configurações, vá em em **Dados e Armazenamento**:

{% include image.html src='/files/2022/03/telegram-tor-android-05.jpg' %}

Deslize até o final da tela e toque em **Configurações de Proxy**:

{% include image.html src='/files/2022/03/telegram-tor-android-06.jpg' %}

Ative a opção **Usar Proxy**:

{% include image.html src='/files/2022/03/telegram-tor-android-07.jpg' %}

Na tela seguinte, preencha as configurações dessa forma:

- Certifique-se de que a opção **Proxy SOCKS5** esteja selecionada;
- Em **Servidor**, informe `localhost`;
- Em **Porta**, informe `9150`.

Por fim, toque no ícone de _check_ no canto superior direito:

{% include image.html src='/files/2022/03/telegram-tor-android-08.jpg' %}

De volta à tela anterior, certifique-se de que a opção **Usar Proxy** esteja ativada. Certifique-se também de que o Telegram conseguiu se conectar ao _proxy_ (note o **Conectado**):

{% include image.html src='/files/2022/03/telegram-tor-android-09.jpg' %}

Pronto. Pode voltar à tela inicial do Telegram e seguir usando normalmente.

Um ícone de escudo no canto superior direito da tela indica que o Telegram está conectado ao _proxy_ (nesse caso, à Rede Tor):

{% include image.html src='/files/2022/03/telegram-tor-android-10.jpg' %}

Tocando nele, você pode facilmente acessar as configurações de _proxy_.

Espero que essa dica tenha sido útil. Se ficou com alguma dúvida, não deixe de comentar. Sugestões de outras dicas como essa também são bem-vindas.
