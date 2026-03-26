---
date: "2022-03-23T21:40:00Z"
image: /files/2022/03/telegram-tor-windows.png
title: Como usar o Telegram via Tor no Windows
---

{{< image src="/files/2022/03/telegram-tor-windows.png" >}}

Se por qualquer motivo você for impedido de usar o [Telegram] -- por exemplo, se você está de mudança ou viajando para um dos [países que censuram o Telegram][telegram-censorship] -- você verá hoje nessa dica como pode usá-lo por meio da [Rede Tor] no [Windows].&nbsp;

[Telegram]:             https://telegram.org/
[telegram-censorship]:  https://en.wikipedia.org/wiki/Government_censorship_of_Telegram_Messenger
[Rede Tor]:             https://www.torproject.org/
[Windows]:              https://www.microsoft.com/pt-br/windows/

{% capture outros_sos %}

Se, por um acaso, você procurava instruções para outro sistema operacional, mas caiu nessa página, consulte os _links_ a seguir:

- Android: [Como usar o Telegram via Tor no Android][android]
- iOS (iPhone e iPad): [Como usar o Telegram via Tor no iOS (iPhone e iPad)][ios]
- Linux: [Dica: como usar o Telegram via Tor no Linux - Linux Kamarada][linux]

[android]: {{% ref "2022-03-24-como-usar-o-telegram-via-tor-no-android" %}}
[ios]: {{% ref "2022-03-29-como-usar-o-telegram-via-tor-no-ios-iphone-e-ipad" %}}
[linux]: https://linuxkamarada.com/pt/2022/02/26/dica-como-usar-o-telegram-via-tor/

{% endcapture %}

{% include update.html date="29/03/2022" message=outros_sos %}

Infelizmente, o Brasil chegou a ser adicionado à [lista de países que censuram o Telegram][telegram-censorship], porque houve uma ordem judicial para bloquear o Telegram na sexta-feira passada, [18 de março de 2022][tecmundo-1]. Mas, felizmente, essa ordem foi revogada 2 dias depois, no [domingo 20][tecmundo-2]. No momento em que escrevo esta dica, o uso do Telegram é, legalmente falando, permitido no Brasil, e espero que continue assim.

[tecmundo-1]: https://www.tecmundo.com.br/software/235647-telegram-ministro-alexandre-moraes-determina-banimento-app.htm
[tecmundo-2]: https://www.tecmundo.com.br/internet/235684-telegram-liberado-brasil-cumprir-ordens-moraes.htm

O [Projeto Tor][Rede Tor] (sigla de _The Onion Router_, "o roteador cebola", em uma tradução livre) mantém uma rede de túneis ao redor do mundo -- a Rede Tor -- pela qual trafegam dados de seus usuários de forma anônima, criptografada, privada, segura e livre de censura. Usando a Rede Tor, você navega sem ser identificado ou rastreado. Para os _sites_, seu endereço IP aparece diferente, como se estivesse em outro país.

A forma mais fácil de se conectar à Rede Tor no Windows é usar o [Navegador Tor] (_Tor Browser_), que é uma versão do Mozilla Firefox modificada para trafegar dados somente dentro da Rede Tor. Ao se conectar à Rede Tor, o Navegador Tor disponibiliza uma porta que pode ser usada como _proxy_ para conectar também outros aplicativos à Rede Tor.

[Navegador Tor]: https://www.torproject.org/download/

Caso ainda não tenha o aplicativo do Telegram para Windows, baixe-o em:

- [https://desktop.telegram.org/](https://desktop.telegram.org/)

Já o Navegador Tor pode ser baixado em:

- [https://www.torproject.org/download/](https://www.torproject.org/download/)

Na verdade, no _link_ acima, você baixará a versão original, em inglês.

Para baixar versões traduzidas -- inclusive há uma tradução para o Português Brasileiro -- use este _link_ em vez daquele:

- [https://www.torproject.org/download/languages/](https://www.torproject.org/download/languages/)

Abra o Navegador Tor e aguarde-o conectar à Rede Tor:

{{< image src="/files/2022/03/telegram-tor-windows-01.jpg" >}}

Certifique-se de que o navegador está de fato conectado à Rede Tor acessando:

- [https://check.torproject.org/](https://check.torproject.org/)

{{< image src="/files/2022/03/telegram-tor-windows-02.jpg" >}}

Agora inicie o Telegram e abra o menu clicando no ícone com três linhas horizontais, no canto superior esquerdo da janela:

{{< image src="/files/2022/03/telegram-tor-windows-03.jpg" >}}

No menu, clique em **Configurações**:

{{< image src="/files/2022/03/telegram-tor-windows-04.jpg" >}}

Nas configurações, clique em **Avançado**:

{{< image src="/files/2022/03/telegram-tor-windows-05.jpg" >}}

Na seção **Dados e Armazenamento**, clique em **Tipo de conexão**:

{{< image src="/files/2022/03/telegram-tor-windows-06.jpg" >}}

Nas **Configurações de proxy**, selecione **Usar proxy customizado**:

{{< image src="/files/2022/03/telegram-tor-windows-07.jpg" >}}

Na tela seguinte, preencha as configurações dessa forma:

- Certifique-se de que a opção **SOCKS5** esteja selecionada;
- Em **Nome do host**, informe `localhost`;
- Em **Porta**, informe `9150`.

{{< image src="/files/2022/03/telegram-tor-windows-08.jpg" >}}

Por fim, clique em **Salvar**.

De volta às **Configurações de proxy**, certifique-se de que o Telegram conseguiu se conectar ao _proxy_ (note o **online**):

{{< image src="/files/2022/03/telegram-tor-windows-09.jpg" >}}

Pronto. Pode fechar todas as configurações e seguir usando o Telegram normalmente.

Um ícone de escudo no canto inferior esquerdo da janela indica que o Telegram está conectado ao _proxy_ (nesse caso, à Rede Tor):

{{< image src="/files/2022/03/telegram-tor-windows-10.jpg" >}}

Clicando nele, você pode facilmente acessar as configurações de _proxy_.

Espero que essa dica tenha sido útil. Se ficou com alguma dúvida, não deixe de comentar. Sugestões de outras dicas como essa também são bem-vindas.
