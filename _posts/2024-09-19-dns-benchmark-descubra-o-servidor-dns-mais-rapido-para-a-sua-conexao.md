---
date: '2024-09-19 22:00:00 GMT-3'
image: '/files/2024/09/dns-benchmark-06.jpg'
layout: post
title: 'DNS Benchmark: descubra o servidor DNS mais rápido para a sua conexão'
excerpt: 'Se você já usa a Internet há algum tempo, já deve ter ouvido falar em "DNS" ou "servidores DNS". Mas você sabe exatamente o que é isso e como isso impacta na velocidade da sua conexão? Confira nesse artigo o que é DNS e como você pode tornar sua conexão mais rápida.'
---

Se você já usa a Internet há algum tempo, já deve ter ouvido falar em "DNS" ou "servidores DNS". Mas você sabe exatamente o que é isso e como isso impacta na velocidade da sua conexão? Confira a seguir o que é DNS e uma dica prática de como você pode tornar sua conexão mais rápida usando um servidor DNS melhor.

## O que é DNS?

{% include image.html src='/files/2024/09/dns-funcionamento.jpg' caption='Crédito da imagem: [Oficina da Net](https://www.oficinadanet.com.br/internet/32378-os-6-melhores-servidores-dns-publicos-de-2021)' %}

Se você entende minimamente como a Internet funciona, sabe que um computador se comunica com outro por meio do **endereço IP**, que é uma sequência de números que localiza o computador na Internet. Poderíamos fazer uma analogia com o número do celular ou telefone que você digita para ligar para alguém. Ou, se pensarmos na Internet como uma grande rua, o endereço IP seria análogo ao número da casa onde está o computador.

Por exemplo, `142.250.218.238` é o endereço IP do [Google].

Mas quando você abre o navegador e deseja acessar a busca do Google, você não digita `142.250.218.238`, certo? Você digita `google.com`. E é aí que entra o DNS.

**[DNS]** é a sigla em inglês para _**Domain Name System**_ ou **Sistema de Nomes de Domínio**. Ele traduz endereços que são legíveis para nós seres humanos (nomes de domínio, como, por exemplo, `google.com`) em endereços IP usados pelos computadores na rede (`142.250.218.238`).

Se você tem alguma idade e alcançou as [listas telefônicas], se lembra de usá-las para consultar os telefones das lojas para ligar para elas. O DNS seria uma espécie de "lista da Internet", informando o endereço IP de servidores _web_.

Quase todas as comunicações na Internet começam com o computador ou celular (ou outro dispositivo) entrando em contato com um servidor DNS, pedindo para traduzir um nome de um _site_ em seu endereço IP. Portanto, usar um bom servidor DNS é importante para que sua conexão com a Internet seja rápida.

Normalmente, quando conectamos o computador à rede, seja ela sem fio ou cabeada, ele detecta automaticamente as configurações da rede, dentre elas quais servidores DNS usar, que geralmente são os servidores DNS da operadora.

Nem sempre esses são os servidores DNS que respondem mais rapidamente. Felizmente, você não precisa usá-los. Existem diversos servidores DNS públicos, gratuitos e conhecidos, como os da [Cloudflare] (`1.1.1.1`) ou do [Google][google-dns] (`8.8.8.8`).

Mas como você pode descobrir quais são os servidores DNS mais rápidos para você? Existe um pequeno programa que pode te ajudar com essa tarefa.

## Conheça o DNS Benchmark

O **[DNS Benchmark]** é um programa _freeware_ (gratuito) que testa o tempo de resposta de uma lista de servidores DNS conhecidos e te informa ao final quais são os mais rápidos para você usar de onde está. Ele é pequeno (172 kB), leve, rápido, roda sem precisar ser instalado e é compatível com [todas as versões] do [Windows], do Windows 95 ao Windows 11, e também com o [Linux] e o [macOS], podendo ser usado nesses sistemas por meio do [Wine].

Nas imagens a seguir, você verá o DNS Benchmark sendo usado no [Linux Kamarada 15.5], mas você pode usá-lo em qualquer um desses sistemas.

## Baixando o DNS Benchmark

Para baixar o DNS Benchmark, acesse seu _site_ oficial em:

- <https://www.grc.com/dns/benchmark.htm>

E clique no _link_ **Download now** (Baixar agora):

{% include image.html src='/files/2024/09/dns-benchmark-01.jpg' %}

Quando o _download_ do programa terminar, você já pode abri-lo:

{% include image.html src='/files/2024/09/dns-benchmark-02.jpg' %}

## Rodando o DNS Benchmark

Essa é a tela inicial do DNS Benchmark, apresentando uma pequena introdução (**Introduction**) ao programa:

{% include image.html src='/files/2024/09/dns-benchmark-03.jpg' %}

Se seu inglês for bom e você estiver com tempo, pode ser interessante lê-la.

Para iniciar os testes, mude para a aba **Nameservers** (servidores de nomes):

{% include image.html src='/files/2024/09/dns-benchmark-04.jpg' %}

Essa aba mostra a lista de servidores DNS que serão testados. Note que os servidores DNS atualmente usados pelo seu computador foram adicionados à lista, eles aparecem no topo e em negrito (no meu caso, o meu roteador [MikroTik], `10.0.0.1`) e também entrarão na comparação, para ver se você poderia estar usando um servidor DNS mais rápido. Opcionalmente, se você quiser adicionar ou remover um servidor DNS da lista, use o botão **Add/Remove**.

Antes de iniciar o teste, interrompa qualquer atividade que você esteja fazendo que use a Internet (como, por exemplo, assistir a um vídeo pelo [YouTube] ou rolar o _feed_ das redes sociais). Durante o teste, evite usar a Internet, para que o resultado seja o mais preciso possível.

Para iniciar o teste, clique no botão **Run Benchmark**.

O teste pode demorar alguns segundos ou minutos. Aguarde sua conclusão.

O teste padrão envolve 75 servidores DNS. Quando ele terminar, o programa vai sugerir fazer um teste mais completo, considerando quase 5 mil servidores DNS. Se você estiver com tempo e quiser fazê-lo, clique no botão **Build Custom List** (Criar Lista Personalizada). Senão, clique em **Not Now** (Não Agora):

{% include image.html src='/files/2024/09/dns-benchmark-05.jpg' %}

Finalmente, os resultados do teste:

{% include image.html src='/files/2024/09/dns-benchmark-06.jpg' %}

Os servidores DNS são ordenados pelo tempo de resposta, do menor (mais rápido) para o maior (mais lento).

Felizmente, no meu caso, o servidor DNS mais rápido para mim é o que já estou usando, que é o roteador da minha casa. Compreensível: meu computador está a apenas uma rede Wi-Fi de distância dele. Estranho seria se ele não encabeçasse a lista.

Na sequência, podemos identificar os servidores DNS da Cloudflare (`1.1.1.1` e `1.0.0.1`). Esses são os servidores DNS que respondem mais rápido de onde estou. Eu poderia configurar meu computador e/ou meu roteador para usá-los.

Note que se você conectar seu computador a outra rede e repetir esse teste, o resultado pode ser diferente, especialmente se você estiver em outra cidade.

## Conclusão

Se seu inglês for bom e você estiver com tempo, mude para a aba **Conclusions** (Conclusões) e leia o diagnóstico que o programa fez sobre suas configurações de DNS, assim como recomendações do que você pode fazer para melhorá-la:

{% include image.html src='/files/2024/09/dns-benchmark-07.jpg' %}

Espero que essa dica tenha sido útil para deixar sua Internet mais rápida. Se ficou com alguma dúvida, não hesite em comentar.

Até a próxima!

[Google]:               https://www.google.com/
[DNS]:                  https://pt.wikipedia.org/wiki/Sistema_de_Nomes_de_Dom%C3%ADnio
[listas telefônicas]:   https://pt.wikipedia.org/wiki/Lista_telef%C3%B4nica
[Cloudflare]:           https://1.1.1.1/pt-BR/dns/
[google-dns]:           https://developers.google.com/speed/public-dns/docs/using?hl=pt-br
[DNS Benchmark]:        https://www.grc.com/dns/benchmark.htm
[todas as versões]:     https://www.tecmundo.com.br/software/219912-windows-veja-evolucao-principal-sistema-operacional-do-mundo.htm
[Windows]:              https://www.microsoft.com/pt-br/windows/
[Linux]:                https://www.vivaolinux.com.br/linux/
[macOS]:                https://www.apple.com/br/macos/
[Wine]:                 https://www.winehq.org/
[Linux Kamarada 15.5]:  https://linuxkamarada.com/pt/2024/05/27/linux-kamarada-15-5-mais-alinhado-com-o-opensuse-leap-e-com-outras-distribuicoes/
[MikroTik]:             {% post_url 2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa %}
[YouTube]:              https://www.youtube.com/
