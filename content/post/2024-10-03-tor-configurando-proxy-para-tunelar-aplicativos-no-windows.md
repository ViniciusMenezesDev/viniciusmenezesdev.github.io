---
date: "2024-10-03T21:10:00Z"
excerpt: Vimos o que é VPN, Rede Tor e como usá-la por meio do Navegador Tor. Como
  nos computadores é mais comum acessarmos sites, o Navegador Tor é a melhor forma
  de começar a usar a Rede Tor no Windows. Mas você também pode tunelar aplicativos
  usando o proxy disponibilizado pelo Navegador Tor. Veja como.
image: /files/2024/10/tor-windows.jpg
title: 'Tor: configurando proxy para tunelar aplicativos no Windows'
---

{% include image.html src='/files/2024/10/tor-windows.jpg' %}

Vimos o que é **[VPN]**, **[Rede Tor][VPN]** e a forma mais fácil de usá-la no [Windows], que é por meio do **[Navegador Tor][VPN]** (_Tor Browser_), que é uma versão do [Mozilla Firefox] modificada para trafegar dados somente dentro da Rede Tor. Como nos computadores (_desktops_ e _notebooks_) é mais comum acessarmos serviços _online_ por meio do navegador, em vez de aplicativos (como é o caso com dispositivos móveis -- _smartphones_ e _tablets_), o Navegador Tor é a melhor forma de começar a usar a Rede Tor no Windows.

No entanto, se você precisa conectar um ou mais aplicativos no Windows à Internet por meio da Rede Tor, saiba que é possível fazer isso usando o Navegador Tor também. Para se conectar à Rede Tor, o Navegador Tor inicia um cliente Tor interno, que disponibiliza a conexão com a Rede Tor por meio de um _proxy_, que é usado internamente pelo Navegador Tor, mas pode ser usado por outros aplicativos também. Então, para conectar um aplicativo à Rede Tor, basta configurá-lo para usar esse _proxy_.

A seguir, você verá como configurar o Windows para usar o _proxy_ do Navegador Tor, o que deve fazer com que todos os aplicativos usem esse _proxy_ também, ao menos na teoria. Alguns aplicativos podem ter sua própria configuração de _proxy_. Por exemplo, já mostrei em outro artigo [como usar o Telegram via Tor][telegram-tor].

## Configurando o proxy do Navegador Tor no Windows

Antes de começar, inicie o Navegador Tor e certifique-se de que ele está conectado à Rede Tor. Se precisar de ajuda com isso, consulte o artigo anterior:

- [O que é VPN e a forma mais fácil de usá-la no Windows: por meio do Navegador Tor][VPN]

Com o Navegador Tor iniciado e conectado à Rede Tor, abra o **Menu Iniciar**, pesquise por **Opções da Internet** e clique na opção correspondente:

{% include image.html src='/files/2024/10/tor-browser-proxy-01.jpg' %}

Mude para a aba **Conexões** e clique no botão **Configurações da LAN**:

{% include image.html src='/files/2024/10/tor-browser-proxy-02.jpg' %}

Marque a opção **Usar um servidor proxy para a rede local** e clique em **Avançadas**:

{% include image.html src='/files/2024/10/tor-browser-proxy-03.jpg' %}

Em **Socks**, informe `127.0.0.1`. Ao lado, em **Porta**, informe `9150`:

{% include image.html src='/files/2024/10/tor-browser-proxy-04.jpg' %}

Clique em **OK** em todas as caixas de diálogo para fechá-las.

## Testando a conexão com a Rede Tor

Como [vimos][VPN], sempre antes de começar a usar a Rede Tor, convém testar se você está de fato conectado à Rede Tor acessando [check.torproject.org](https://check.torproject.org/). No [tutorial anterior][VPN], fizemos isso no Navegador Tor.

Como agora qualquer aplicativo do sistema consegue acessar a Rede Tor, podemos fazer esse teste com outro navegador, a exemplo do [Microsoft Edge], que já vem instalado de fábrica no Windows:

{% include image.html src='/files/2024/10/tor-browser-proxy-05.jpg' %}

## Usando outros navegadores com o Tor

Observe que a melhor forma de acessar _sites_ usando a Rede Tor é por meio do [Navegador Tor][VPN], que não apenas só trafega dados dentro da Rede Tor, como também já vem com vários ajustes relacionados a privacidade.

[**Não é recomendado**][tor-with-a-browser] usar um navegador comum, como o Microsoft Edge, o Mozilla Firefox ou o [Google Chrome], para navegar pela Rede Tor, mesmo que seu tráfego esteja sendo redirecionado pelo _proxy_ do Navegador Tor.

Mas, se por qualquer motivo você precisar fazer isso, saiba que os navegadores Google Chrome e Microsoft Edge usam a configuração do sistema (via Opções da Internet), como fizemos. Portanto, você já pode usar esses navegadores com a Rede Tor. Já o Mozilla Firefox tem sua própria configuração de _proxy_, veja como configurá-lo [aqui][firefox-proxy] (as telas são iguais no Linux e no Windows).

## Avançado: instalando o Tor como um serviço

Usar o _proxy_ do Navegador Tor é mais fácil, porque não requer a instalação de mais um programa, mas requer que você sempre abra o Navegador Tor.

Agora mostrarei outra forma, mais avançada, de se conectar à Rede Tor no Windows, que é instalando o **[cliente Tor]** como um serviço do Windows.

Um **serviço** é um programa que roda em segundo plano (ao fundo, em _background_) enquanto você usa outros programas. Normalmente, é iniciado automaticamente junto com o sistema operacional, quando você liga o computador.

Quando iniciado, o serviço do cliente Tor se conecta à Rede Tor e disponibiliza essa conexão para outros aplicativos por meio de um _proxy_. Então, para conectar um aplicativo à Rede Tor, basta configurá-lo para usar esse _proxy_.

Instalar o cliente Tor como um serviço do Windows faz com que seu sistema se conecte de forma automática à Rede Tor sempre que ligar, e independe do Navegador Tor.

Baixe o **Pacote Tor Expert** (_Tor Expert Bundle_) acessando o _site_ do Tor em:

- <https://www.torproject.org/pt-BR/download/tor/>

Clique no _link_ referente à versão **Estável** para **Windows (x86_64)**:

{% include image.html src='/files/2024/10/tor-service-01.jpg' %}

Você vai baixar um arquivo compactado. Crie uma pasta `C:\Tor` e extraia o conteúdo do arquivo baixado para ela usando um programa como o [7-Zip]. Ao final, você terá isto:

{% include image.html src='/files/2024/10/tor-service-02.jpg' %}

Note o executável `tor.exe` dentro de `C:\Tor\tor`. Esse é o cliente Tor.

Abra o **Menu Iniciar**, pesquise por `cmd` e execute o **Prompt de Comando** como administrador:

{% include image.html src='/files/2024/10/tor-service-03.jpg' %}

Mude para a pasta `C:\Tor\tor` e execute o `tor.exe`:

{% include image.html src='/files/2024/10/tor-service-04.jpg' %}

O cliente Tor pode levar alguns segundos ou minutos para iniciar:

{% include image.html src='/files/2024/10/tor-service-05.jpg' %}

Perceba ao final: `Bootstrapped 100% (done): Done`. Isso indica que a conexão com a Rede Tor foi estabelecida e a VPN está pronta para ser usada.

Configure o _proxy_ indo nas Opções da Internet, da mesma forma como você fez antes, apenas mude a porta para `9050`:

{% include image.html src='/files/2024/10/tor-service-06.jpg' %}

Teste a conexão com a Rede Tor acessando [check.torproject.org](https://check.torproject.org/) no navegador de sua preferência. Se o Navegador Tor estiver aberto, recomendo que você o feche antes de fazer o teste, para se certificar de que a conexão está sendo tunelada pelo cliente Tor, e não pelo Navegador Tor.

Se o teste foi bem sucedido, é sinal de que o cliente Tor foi instalado e está funcionando corretamente.

Agora vamos transformá-lo em um serviço do Windows.

Volte ao Prompt de Comando e tecle **Ctrl + C** para encerrar o cliente Tor.

Na sequência, execute:

```
> tor.exe --service install
```

{% include image.html src='/files/2024/10/tor-service-07.jpg' %}

Note: `Service installed successfully` (Serviço instalado com sucesso)

Para se certificar de que o serviço foi instalado, abra o **Menu Iniciar**, pesquise por `serviços` e abra o aplicativo **Serviços**:

{% include image.html src='/files/2024/10/tor-service-08.jpg' %}

Perceba o serviço **Tor Win32 Service** com **Status** = **Em Execução** e **Tipo de Inicialização** = **Automático**:

{% include image.html src='/files/2024/10/tor-service-09.jpg' %}

Pronto! Feito isso, seu sistema estará sempre pronto para usar a Rede Tor.

## Conclusão

Para uma experiência mais completa da Rede Tor no Windows, tenha os dois instalados no seu computador: o [Navegador Tor][VPN], para acessar _sites_, e o cliente Tor, para conectar aplicativos como um _proxy_.

Não encerre o assunto por aqui. Pesquise sobre VPN, inclusive sobre VPNs alternativas ao Tor, porque pode ser que você venha a precisar delas.

Se você está recorrendo ao Tor para vencer censura, observe que pode acontecer de seu país passar a censurar a Rede Tor. Talvez você queira consultar antecipadamente a seção sobre [Censura] da documentação do Tor.

## Referências

- [Using The Tor Bundle on Windows for Complete Traffic Proxying \| by Jason Jacobs, MSc. \| Medium](https://medium.com/@jasonjayjacobs/using-the-tor-bundle-on-windows-for-complete-traffic-proxying-658f995f75e4)
- [python - How to configure a tor proxy on windows? - Stack Overflow](https://stackoverflow.com/a/61306130)
- [proxy - How to configure Tor as service on windows? - Super User](https://superuser.com/a/1631196)

[VPN]:                  {% post_url 2024-09-03-o-que-e-vpn-e-a-forma-mais-facil-de-usa-la-no-windows-por-meio-do-navegador-tor %}
[Windows]:              https://www.microsoft.com/pt-br/windows/
[Mozilla Firefox]:      https://www.mozilla.org/pt-BR/firefox/
[telegram-tor]:         {% post_url 2022-03-23-como-usar-o-telegram-via-tor-no-windows %}
[Microsoft Edge]:       https://www.microsoft.com/pt-br/edge
[tor-with-a-browser]:   https://support.torproject.org/pt-BR/tbb/#tbb_tbb-9
[Google Chrome]:        https://www.google.com/chrome/
[firefox-proxy]:        https://linuxkamarada.com/pt/2024/10/01/tor-configurando-proxy-para-tunelar-aplicativos-no-linux/#firefox
[cliente Tor]:          https://www.torproject.org/pt-BR/download/tor/
[7-Zip]:                https://www.7-zip.org/
[Censura]:              https://support.torproject.org/pt-BR/censorship/
