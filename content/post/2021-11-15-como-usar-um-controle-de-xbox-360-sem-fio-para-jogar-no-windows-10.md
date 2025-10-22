---
date: "2021-11-15T13:20:00Z"
excerpt: Se você tem um controle sem fio para Xbox 360, pode querer usá-lo com o PC
  também. Como ele possui muitos botões, pode ser compatível com vários jogos. Inclusive,
  pode ser usado para emular os controles de vários videogames.
image: /files/2021/11/xbox360-wireless.jpg
title: Como usar um controle de Xbox 360 sem fio para jogar no Windows 10
---

{% include image.html src='/files/2021/11/xbox360-wireless.jpg' %}

Se você tem um controle sem fio para [Xbox 360], pode querer usá-lo com o PC também. Como ele possui muitos botões, pode ser compatível com vários jogos. Inclusive, pode ser usado para emular os controles de vários _videogames_.

[Xbox 360]: https://pt.wikipedia.org/wiki/Xbox_360

{% include image.html src='/files/2021/11/360_controller.svg' caption='Controle para Xbox 360. Fonte: [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:360_controller.svg).' %}

Porém, diferente dos controles com fio, que usam o padrão USB, e dos [controles sem fio para modelos mais novos de Xbox][controle-xbox-one], que usam o padrão [Bluetooth][makeuseof], esse modelo de [controle sem fio para o Xbox 360][controle-xbox-360] usa um protocolo sem fio proprietário de 2,4 GHz, precisando de um receptor sem fio para ser usado no computador.

[controle-xbox-one]: https://pt.wikipedia.org/wiki/Controle_do_Xbox_One
[makeuseof]: https://www.makeuseof.com/tag/get-game-controllers-running-linux/
[controle-xbox-360]: https://pt.wikipedia.org/wiki/Controle_do_Xbox_360

Embora a [Microsoft] fabrique esse receptor, ela não o vende separadamente. Então, você tem 3 opções: comprar o controle sem fio original da Microsoft que vem com o receptor; comprar apenas o receptor usado, separado do controle sem fio (que você já tem); ou comprar um receptor chinês que é um clone perfeito, indistinguível do receptor oficial.

[Microsoft]: https://www.microsoft.com/pt-br

Eu optei pela terceira opção, que foi a mais barata e funcionou. Você pode encontrar várias opções pesquisando no [Google] ou [Mercado Livre], por exemplo, mas eu achei mais barato comprar pelo [AliExpress]. Demorou mais porque veio da China, mas chegou em 1 mês.

[Google]: https://www.google.com/search?q=receptor+usb+para+controle+de+xbox+360+sem+fio&&tbm=shop
[Mercado Livre]: https://lista.mercadolivre.com.br/receptor-usb-para-controle-de-xbox-360-sem-fio
[AliExpress]: https://s.click.aliexpress.com/e/_AnCjDn

O receptor veio com um CD com um _driver_ e um programa para [Windows]. No entanto, o _driver_ que vinha no CD não servia para o Windows 10. Pesquisando, eu encontrei um [tutorial no YouTube][youtube] que mostra como instalar o _driver_ do receptor, que na verdade já vem até incluído no Windows 10. Como a instalação de novo _hardware_ no Windows 10 costuma ser mais fácil, decidi fazer esse tutorial.

[Windows]: https://www.microsoft.com/pt-br/windows
[youtube]: https://www.youtube.com/watch?v=8JL75xVfY3c

Nesse tutorial, você verá como instalar o _driver_ e testar o controle sem fio para Xbox 360 no Windows 10. Para referência, estou usando o Windows 10 Edição Home, Versão 20H2.

Caso você tenha se esbarrado nesse tutorial, mas esteja na verdade procurando como usar esse controle no [Linux], confira uma versão desse mesmo tutorial para Linux no _site_ do [Linux Kamarada][linuxkamarada]:

[Linux]: https://www.vivaolinux.com.br/linux/

- [Como usar um controle de Xbox 360 sem fio para jogar no Linux - Linux Kamarada][linuxkamarada]

[linuxkamarada]: https://linuxkamarada.com/pt/2021/11/14/como-usar-um-controle-de-xbox-360-sem-fio-para-jogar-no-linux/

## Instalando o driver do receptor

Plugue o receptor em uma porta USB livre do computador.

Depois de alguns segundos ou minutos, aparecerá uma notificação do Windows dizendo que o "Dispositivo Desconhecido" está pronto para uso.

Até pelo nome que ele recebeu do Windows, por óbvio, não está.

Na **Área de Trabalho**, clique com o botão direito do _mouse_ em **Este Computador** e clique em **Propriedades**:

{% include image.html src='/files/2021/11/xbox360-wireless-01.jpg' %}

Na janela que abre, **Sobre**, clique em **Gerenciador de Dispositivos**, à direita:

{% include image.html src='/files/2021/11/xbox360-wireless-02.jpg' %}

No **Gerenciador de Dispositivos**, expanda **Outros dispositivos**, clique com o botão direito no **Dispositivo desconhecido** e clique em **Propriedades**:

{% include image.html src='/files/2021/11/xbox360-wireless-03.jpg' %}

Na tela seguinte, clique no botão **Alterar Configurações**:

{% include image.html src='/files/2021/11/xbox360-wireless-04.jpg' %}

Forneça a senha do usuário administrador.

O botão **Atualizar Driver** nessa mesma tela se torna disponível. Clique nele.

No assistente que se abre, clique em **Procurar drivers no meu computador**:

{% include image.html src='/files/2021/11/xbox360-wireless-05.jpg' %}

Na tela seguinte, clique em **Permitir que eu escolha em uma lista de drivers disponíveis em meu computador**:

{% include image.html src='/files/2021/11/xbox360-wireless-06.jpg' %}

Na lista, selecione o tipo **Periféricos do XBOX 360** e clique em **Avançar**:

{% include image.html src='/files/2021/11/xbox360-wireless-07.jpg' %}

Na tela seguinte, selecione o modelo **Xbox 360 Wireless Receiver for Windows**:

{% include image.html src='/files/2021/11/xbox360-wireless-08.jpg' %}

(tem alguns com nomes parecidos, na dúvida eu escolhi o mais recente, o último na lista)

No aviso que aparece, pode clicar em **Sim**:

{% include image.html src='/files/2021/11/xbox360-wireless-09.jpg' %}

Finalmente, a instalação do _driver_ foi concluída. Pode **Fechar** o assistente:

{% include image.html src='/files/2021/11/xbox360-wireless-10.jpg' %}

Pode ser necessário reiniciar o computador.

## Conectando o controle

Se você tiver um Xbox 360 por perto, recomendo desligá-lo e desconectá-lo da energia. O passo a seguir pode fazer com que ele ligue sem necessidade.

1. No controle sem fio, pressione e segure o botão **Guia** (_guide_) até que ele ligue
2. No receptor, pressione e solte o botão de conexão (o único botão que ele tem), a luz dele começa a piscar
3. No controle sem fio, pressione e solte o botão de conexão, na parte de cima, a luz dele começa a piscar
4. Ambas as luzes deixam de piscar quando o controle se conecta ao receptor. A luz fixa acesa no controle passa a indicar sua posição (uma de 4 possíveis).

{% include image.html src='/files/2021/11/xbox360-wireless-11.png' %}

Para conectar mais controles, siga esses 4 passos novamente. Em tese, você pode conectar até 4 controles (eu, particularmente, só testei até 2).

## Testando o controle

Provavelmente a forma mais fácil de testar o controle é abrir o navegador e acessar o _site_ [gamepad-tester.com](https://gamepad-tester.com/). Pressione um botão no controle para começar o teste:

{% include image.html src='/files/2021/11/xbox360-wireless-12.jpg' %}

Mexa os eixos e aperte os botões e confira a animação na tela.

Caso não tenha conexão com a Internet, ou caso prefira mesmo, você também pode fazer esse teste pelo próprio Windows.

Abra o **menu Iniciar** e clique em **Configurações**.

Abra a seção **Dispositivos** e clique em **Dispositivos e impressoras**, à direita.

Clique com o botão direito no controle e clique em **Configurações do controlador de jogo**:

{% include image.html src='/files/2021/11/xbox360-wireless-13.jpg' %}

Selecione o controlador e clique em **Propriedades**:

{% include image.html src='/files/2021/11/xbox360-wireless-14.jpg' %}

Mexa os eixos e aperte os botões e confira a animação na tela:

{% include image.html src='/files/2021/11/xbox360-wireless-15.jpg' %}

## Opcional: instalando o programa do receptor

Está tudo pronto para usar o receptor e o controle nos jogos.

Mas, opcionalmente, você pode instalar o programa que o acompanha, que simula as luzes na frente do Xbox 360 e indica quando a bateria do controle está baixa.

Diferente do _driver_, o programa que veio no CD é compatível com Windows 10.

Insira o CD no leitor de CD do computador, abra a pasta **Software** dentro dele e inicie o programa **setupstb.exe** (o outro não funcionou pra mim):

{% include image.html src='/files/2021/11/xbox360-wireless-16.jpg' %}

Marque a opção **Aceito este contrato** e toque a instalação no "padrão Windows" ("avançar, avançar, avançar..."):

{% include image.html src='/files/2021/11/xbox360-wireless-17.jpg' %}

Quando a instalação terminar, pode ser necessário reiniciar o computador.

Para iniciar o programa do controle, abra o **menu Iniciar** e procure por **Status do Microsoft Xbox 360 Accessories**:

{% include image.html src='/files/2021/11/xbox360-wireless-18.jpg' %}

Eis o programa funcionando:

{% include image.html src='/files/2021/11/xbox360-wireless-19.jpg' %}

Caso o programa do CD não funcione pra você, ou caso seu receptor não tenha vindo com um CD, pesquisando na Internet eu encontrei esse mesmo programa para baixar no _site_ [TechSpot]. Funciona no Windows 10 (eu testei), só não tem a tradução pro português (é em inglês).

[TechSpot]: https://www.techspot.com/drivers/driver/file/information/11300/

## Usando o controle (ou seja, jogando)

Pronto, agora é só usar o controle! Ou seja, jogar!

A título de curiosidade, se você aperta o botão **Guia** (_guide_) no controle, aparece a [**Barra de Jogos Xbox**][2amgaming] (_Xbox Game Bar_) com alguns recursos interessantes para _gamers_:

[2amgaming]: https://blog.2amgaming.com/2020/01/barra-de-jogos-xbox-windows-10/

{% include image.html src='/files/2021/11/xbox360-wireless-20.jpg' %}

## Referências

Além das páginas cujos _links_ aparecem ao longo do texto, eu consultei também estas:

- [How to Hook Up a Wireless Xbox 360 Controller to Your Computer - How-To Geek][howtogeek]
- [Conectar um controle ao seu Xbox 360 - Suporte do Xbox 360][xbox-360-help]

[howtogeek]: https://www.howtogeek.com/178881/ask-htg-how-can-i-hook-up-my-xbox-360-controllers-to-my-computer/
[xbox-360-help]: https://support.xbox.com/pt-BR/help/xbox-360/accessories/connecting-game-controllers
