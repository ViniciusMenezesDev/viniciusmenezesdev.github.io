---
date: "2025-02-09T04:00:00Z"
image: /files/2025/02/manutencao-preventiva-windows.jpg
title: Dicas de manutenções preventivas que você pode fazer no Windows para deixar
  seu computador mais rápido
---

{{< image src="/files/2025/02/manutencao-preventiva-windows.jpg" >}}

Você tem um computador velhinho com [Windows 10] mas que ainda dá conta do recado? Confira a seguir algumas dicas de manutenções preventivas que você pode fazer para deixá-lo mais rápido, como se fosse novinho em folha.&nbsp;

Note que essas dicas, na verdade, se aplicam a quaisquer computadores, tanto antigos, quanto novos com [Windows 11].

<!--more-->

## 1) Limpar arquivos temporários

Os programas que usamos no dia-a-dia muitas vezes precisam criar arquivos no disco para fazerem seu trabalho, como quando acessamos uma página em um navegador e ele baixa as imagens para poder exibi-las. Normalmente, os próprios programas excluem esses arquivos, mas nem sempre. O navegador mantém as imagens no disco pro caso de acessarmos aquela página novamente e daí ele não precisa baixá-las de novo. Acontece que esses arquivos consomem espaço em disco e podem, após vários dias, deixar o disco sem espaço e o computador lento. Por isso, convém exclui-los de tempos em tempos.

Felizmente, existem vários programas que podem nos ajudar com essa tarefa, dos quais provavelmente o mais conhecido e que eu indico é o **[CCleaner]**.

O CCleaner tem versões tanto gratuitas quanto pagas, mas a versão gratuita para uso pessoal no computador de casa já faz bastante coisa.

Ao abrir o programa, a tela principal, **Health Check** (verificação de saúde), faz uma verificação de diversas limpezas de arquivos que podem ser feitas no computador. Clique em **Escaneamento do meu PC** para começar:

{{< image src="/files/2025/02/ccleaner-tela-inicial.jpg" >}}

O CCleaner consegue limpar _cookies_, histórico do navegador, arquivos temporários da Internet e do sistema, lixeira e cache de aplicativos:

{{< image src="/files/2025/02/ccleaner-limpar.jpg" >}}

Indo em **Ferramentas > Registro**, é possível fazer outro tipo de limpeza, que é a limpeza do [registro do Windows]. O registro é um banco de dados onde o sistema e os aplicativos armazenam diversas configurações. Valores desatualizados e inválidos no registro podem fazer com que o computador perca tempo procurando arquivos que não existem e, portanto, fique mais lento. Felizmente, o CCleaner consegue procurar erros no registro do Windows e corrigi-los:

{{< image src="/files/2025/02/ccleaner-registro.jpg" >}}

Você deve fazer essas limpezas de tempos em tempos para manter seu computador rápido. Uma dica é ir em **Opções > Programação de limpeza** e programar o CCleaner para te lembrar de fazer essas limpezas:

{{< image src="/files/2025/02/ccleaner-programacao.jpg" >}}

## 2) Desinstalar programas

Com o passar do tempo, pode ser que programas que instalamos lá atrás já não façam mais sentido hoje. Pode acontecer também que quando você foi instalar um programa ele ofereceu instalar outro, e você aceitou sem perceber. Seja qual for o motivo, pode ser que seu computador tenha programas desnecessários instalados e que estejam consumindo recursos, como processamento, memória, armazenamento, Internet, etc. deixando, assim, seu computador mais lento.

Vá no **menu Iniciar > Configurações > Aplicativos**, verifique na lista quais programas você não reconhece ou não usa e desintale-os:

{{< image src="/files/2025/02/aplicativos.jpg" >}}

## 3) Fazer uma faxina nos arquivos

Não apenas os arquivos que o sistema e os programas baixam e geram ocupam espaço, mas também os arquivos que nós mesmos baixamos e criamos. Examinando seus arquivos pessoais, pode ser que você encontre arquivos que não faz mais sentido manter no seu computador e que, portanto, você pode excluir para liberar espaço em disco.

Um programa que pode te ajudar a identificar quais arquivos e pastas ocupam mais espaço e precisam de mais atenção é o **[JDiskReport]**.

Gratuito e escrito na linguagem de programação [Java], esse programa pequeno e leve analisa seu disco (ou qualquer caminho que você peça para ele analisar) e mostra suas pastas como uma lista e como um gráfico de pizza, começando pelas que mais ocupam espaço:

{{< image src="/files/2025/02/jdiskreport.jpg" >}}

**Observação:** você deve ter o [Java] instalado no seu computador **antes** de instalar o JDiskReport.

Para que o JDiskReport analise um disco ou pasta, abra o **Explorador de Arquivos**, localize o disco ou pasta a ser analisado, clique com o botão direito do _mouse_ e, depois, clique em **JDiskReport**:

{{< image src="/files/2025/02/jdiskreport-explorer.jpg" >}}

## 4) Instalar e/ou atualizar o antivírus

[Vírus], além de ameaçarem sua segurança e privacidade, podem tornar seu computador lento. Principalmente se seu computador é muito exposto (se você costuma acessar _sites_ variados, ou se você costuma usar seu computador na rua e se conectar a diferentes redes Wi-Fi), é essencial que você tenha um bom antivírus instalado e atualizado para detectar as ameaças mais recentes.

Existem diversos programas antivírus e você pode conferir quais tem se saído melhor em _sites_ que fazem testes e comparações de antivírus, como o [AV-TEST] e o [AV-Comparatives]. Note que os antivírus listados nesses _sites_ podem ter versões tanto gratuitas quanto pagas, mas os testes se referem sempre às versões pagas.

Normalmente, o **[Microsoft Defender]**, que já vem com o próprio [Windows][Windows 11], está sempre entre os 10 melhores antivírus e já fornece proteção boa o bastante, de modo que você não precisa instalar outro antivírus no computador.

Se você precisa de ainda mais proteção, pode instalar outro antivírus, e o Windows passará a usar este antivírus em vez do Microsoft Defender. Três antivírus que estão sempre entre os melhores e tem versões gratuitas são o **[Avast]**, o **[AVG]** e o **[Avira]**.

{{< image src="/files/2025/02/avast.jpg" >}}

Normalmente os antivírus incluem alguma opção para escanear arquivos e pastas quando você clica neles com o botão direito no **Explorador de Arquivos**:

{{< image src="/files/2025/02/avast-explorer.jpg" >}}

Se você precisa muito de um bom antivírus, considere pagar por um. Boas opções, além das versões pagas dos já citados, incluem **[ESET]**, **[Kaspersky]** e **[McAfee]**.

## 5) Instalar atualizações do Windows

Com frequência, a [Microsoft] libera atualizações para o Windows, que podem trazer correções de _bugs_ e novas funcionalidades. Manter seu sistema sempre atualizado contribui para tornar seu computador mais rápido e seguro.

Normalmente, o Windows baixa e instala essas atualizações automaticamente em um horário que você não costuma usar o computador. Mas você pode de tempos em tempos verificar se há atualizações pendentes indo no **menu Iniciar > Configurações > Atualização e Segurança**:

{{< image src="/files/2025/02/atualizacoes-01.jpg" >}}

{{< image src="/files/2025/02/atualizacoes-02.jpg" >}}

Faça essa verificação repetidas vezes até que essa tela diga que **Você está atualizado**:

{{< image src="/files/2025/02/atualizacoes-03.jpg" >}}

## Considere formatar o computador

Se você seguiu todas essas dicas e mesmo assim seu computador continua lento, devolvê-lo ao estado de fábrica e reinstalar todos os programas pode ser a única solução.

Note que em toda formatação você corre o risco de perder arquivos. Por isso, antes de formatar seu computador, se certifique de que o _backup_ dos seus arquivos pessoais esteja em dia.

Para formatar seu computador, você pode usar alguma mídia fornecida pelo fabricante (consulte o manual do seu computador), ou [baixar a mídia de instalação do Windows do _site_ da Microsoft][software-download].

## Considere migrar para o Linux

{{< image src="/files/2025/02/fim-suporte-windows-10.jpg" >}}

Talvez você já tenha se deparado com essa tela enquanto usa o Windows 10.

A Microsoft já avisou que vai [encerrar o suporte para o Windows 10][eos] em 14 de outubro desse ano de 2025. Isso quer dizer que o Windows 10 não receberá mais atualizações a partir dessa data. Seu computador com Windows 10 continuará funcionando. Mas, sem atualizações, continuar usando esse sistema se tornará, a cada dia que passa, mais inseguro.

Por outro lado, migrar para o Windows 11 pode exigir que você compre um computador novo.

Se isso não é uma opção para você nesse momento, considere instalar o **[Linux]** no seu computador. O Linux, assim como o Windows, é um sistema operacional, mas é mais leve. Existem **distribuições Linux** (que são o conjunto do sistema mais aplicativos) as mais variadas, para todos os gostos, em sua maioria gratuitas. É verdade que a transição para um sistema novo pode causar um transtorno no início, mas você vai se surpreender como uma distribuição Linux atualizada hoje pode ser rápida até mesmo em um computador que já tem 10 anos.

Você não precisa se desfazer do Windows: pode instalar o Linux no mesmo disco que o Windows, de modo que, ao ligar ou reiniciar, o computador pergunta qual sistema deve usar, uma configuração conhecida como _dual boot_. Também existem vários [programas que você pode usar tanto no Windows quanto no Linux][programas-windows-linux], o que pode facilitar a transição.

Eu indico a distribuição Linux brasileira [Linux Kamarada]. Espero que se divirta!

[Windows 10]:               https://pt.wikipedia.org/wiki/Windows_10
[Windows 11]:               https://www.microsoft.com/pt-br/windows/
[CCleaner]:                 https://www.ccleaner.com/pt-br
[registro do Windows]:      https://pt.wikipedia.org/wiki/Registro_do_Windows
[JDiskReport]:              https://www.jgoodies.com/downloads/jdiskreport/
[Java]:                     https://www.java.com/pt-BR/
[Vírus]:                    https://pt.wikipedia.org/wiki/Vírus_de_computador
[AV-TEST]:                  https://www.av-test.org/en/antivirus/home-windows/
[AV-Comparatives]:          https://www.av-comparatives.org/tests/summary-report-2024/
[Microsoft Defender]:       https://www.microsoft.com/pt-br/windows/comprehensive-security
[Avast]:                    https://www.avast.com/pt-br/
[AVG]:                      https://www.avg.com/pt-br/
[Avira]:                    https://www.avira.com/pt-br/
[ESET]:                     https://www.eset.com/br/
[Kaspersky]:                https://www.kaspersky.com.br/
[McAfee]:                   https://www.mcafee.com/pt-br/
[Microsoft]:                https://www.microsoft.com/pt-br
[software-download]:        https://www.microsoft.com/pt-br/software-download/
[eos]:                      https://www.microsoft.com/pt-br/windows/end-of-support
[Linux]:                    https://www.vivaolinux.com.br/linux/
[programas-windows-linux]:  https://linuxkamarada.com/pt/2019/07/05/18-aplicativos-que-voce-pode-usar-do-mesmo-jeito-no-linux-e-no-windows-parte-1/
[Linux Kamarada]:           https://linuxkamarada.com/pt/