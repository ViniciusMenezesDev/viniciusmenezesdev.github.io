---
date: "2022-03-29T09:30:00Z"
image: /files/2022/03/telegram-tor-ios.png
title: Como usar o Telegram via Tor no iOS (iPhone e iPad)
---

{% include image.html src='/files/2022/03/telegram-tor-ios.png' %}

Se por qualquer motivo você for impedido de usar o [Telegram] -- por exemplo, se você está de mudança ou viajando para um dos [países que censuram o Telegram][telegram-censorship] -- você verá hoje nessa dica como pode usá-lo por meio da [Rede Tor] em dispositivos móveis com [iOS] ([iPhone] e [iPad]).&nbsp;

[Telegram]:             https://telegram.org/
[telegram-censorship]:  https://en.wikipedia.org/wiki/Government_censorship_of_Telegram_Messenger
[Rede Tor]:             https://www.torproject.org/
[iOS]:                  https://www.apple.com/br/ios/
[iPhone]:               https://www.apple.com/br/iphone/
[iPad]:                 https://www.apple.com/br/ipad/

Se, por um acaso, você procurava instruções para outro sistema operacional, mas caiu nessa página, consulte os _links_ a seguir:

- Windows: [Como usar o Telegram via Tor no Windows][windows]
- Android: [Como usar o Telegram via Tor no Android][android]
- Linux: [Dica: como usar o Telegram via Tor no Linux - Linux Kamarada][linux]

[windows]: {% post_url 2022-03-23-como-usar-o-telegram-via-tor-no-windows %}
[android]: {% post_url 2022-03-24-como-usar-o-telegram-via-tor-no-android %}
[linux]: https://linuxkamarada.com/pt/2022/02/26/dica-como-usar-o-telegram-via-tor/

Infelizmente, o Brasil chegou a ser adicionado à [lista de países que censuram o Telegram][telegram-censorship], porque houve uma ordem judicial para bloquear o Telegram na sexta-feira [18 de março de 2022][tecmundo-1]. Mas, felizmente, essa ordem foi revogada 2 dias depois, no [domingo 20][tecmundo-2]. No momento em que escrevo esta dica, o uso do Telegram é, legalmente falando, permitido no Brasil, e espero que continue assim.

[tecmundo-1]: https://www.tecmundo.com.br/software/235647-telegram-ministro-alexandre-moraes-determina-banimento-app.htm
[tecmundo-2]: https://www.tecmundo.com.br/internet/235684-telegram-liberado-brasil-cumprir-ordens-moraes.htm

O [Projeto Tor][Rede Tor] (sigla de _The Onion Router_, "o roteador cebola", em uma tradução livre) mantém uma rede de túneis ao redor do mundo -- a Rede Tor -- pela qual trafegam dados de seus usuários de forma anônima, criptografada, privada, segura e livre de censura. Usando a Rede Tor, você navega sem ser identificado ou rastreado. Para os _sites_, seu endereço IP aparece diferente, como se estivesse em outro país.

A forma mais fácil de se conectar à Rede Tor no iOS é usar o aplicativo [Orbot], que não faz parte oficialmente do Projeto Tor, mas é [recomendado] por este, porque é desenvolvido por algumas das mesmas [pessoas que participam do Projeto Tor][tor-pessoas]. Após se conectar à Rede Tor, o Orbot faz com que o tráfego de Internet de todos os aplicativos do iOS, incluindo o Telegram, passe por dentro da rede Tor.

[Orbot]: https://orbot.app/
[recomendado]: https://support.torproject.org/pt-BR/tormobile/tormobile-3/
[tor-pessoas]: https://www.torproject.org/pt-BR/about/people/

Caso você ainda não tenha o aplicativo do **Telegram** para iOS, pode instalá-lo por meio da App Store:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://apps.apple.com/br/app/telegram-messenger/id686449807" title="">
                <img src="/assets/img/download-app-store.svg" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

O **Orbot** também pode ser instalado pela App Store:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://apps.apple.com/us/app/orbot/id1609461599" title="">
                <img src="/assets/img/download-app-store.svg" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

Para acessar o Telegram via Tor, primeiro abra o Orbot e toque em **Start** ("começar"):

{% include image.html src='/files/2022/03/telegram-tor-ios-01.jpg' %}

Aguarde-o conectar à Rede Tor e estar pronto para uso (note o **connected**, "conectado"):

{% include image.html src='/files/2022/03/telegram-tor-ios-02.jpg' %}

(note também o ícone de VPN, no canto superior esquerdo da tela)

Certifique-se de que o sistema está de fato conectado à Rede Tor acessando [check.torproject.org](https://check.torproject.org/) usando o seu navegador preferido (por exemplo, eu usei o [Safari] mesmo):

[Safari]: https://apps.apple.com/br/app/safari/id1146562112

{% include image.html src='/files/2022/03/telegram-tor-ios-03.jpg' %}

(note o **This browser is configured to use Tor**, "Este navegador está configurado para usar o Tor")

Pronto. Feito isso, você pode abrir o Telegram e usá-lo normalmente.

Quando não precisar usar mais a Rede Tor, volte ao Orbot e toque em **Stop** ("parar").

Espero que essa dica tenha sido útil. Se ficou com alguma dúvida, não deixe de comentar. Sugestões de outras dicas como essa também são bem-vindas.
