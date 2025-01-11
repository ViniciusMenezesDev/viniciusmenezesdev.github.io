---
date: '2025-01-11 00:45:00 GMT-3'
image: '/files/2025/01/hardware-report.png'
layout: post
title: 'Programas gratuitos para obter informações sobre o hardware do computador no Windows'
---

{% include image.html src='/files/2025/01/hardware-report.png' %}

Você está tentando resolver um problema com _[hardware]_ e precisa obter as especificações das peças do seu computador? Ou comprou um computador novo e quer verificar se está tudo no lugar conforme o anúncio? Seja qual for sua situação, confira a seguir alguns programas gratuitos para [Windows] que listam e descrevem o _hardware_ do seu computador e podem te ajudar.

Recentemente, aproveitando a _Black Friday_, eu comprei um _notebook_ [Acer Predator Helios Neo 16][acer]. Antes de [comprar], conferi duas excelentes análises nos _sites_ [Qual Notebook Comprar] e _[Notebook Check]_. Nesta última, me chamaram a atenção algumas capturas de tela de alguns programas, que apresento a seguir.

## Antes: um recurso do próprio Windows

Antes de apresentar os programas propriamente ditos, quero mostrar uma tela do próprio Windows que já exibe algumas informações sobre o computador. Dependendo do que você precisa, se é apenas uma referência rápida, já pode obter um resumo das especificações sem precisar baixar nem instalar nada.

Vá no **menu Iniciar > Configurações**. Na janela que se abre, vá em **Sistema > Sobre**.

Esta tela traz algumas informações como modelo e frequência do processador, quantidade de memória RAM, edição e versão do Windows:

{% include image.html src='/files/2025/01/windows-11-sobre.jpg' %}

Use os botões **Copiar** para copiar facilmente essas informações e colá-las onde precisar (em um _chat_ de suporte, por exemplo).

```
Nome do dispositivo vini-predator
Processador         Intel(R) Core(TM) i9-14900HX   2.20 GHz
RAM instalada       32,0 GB (utilizável: 31,7 GB)
ID do dispositivo   178A5DAF-AFEE-4691-BFB8-0E7EE2B91CCA
ID do Produto       00342-43510-68645-AAOEM
Tipo de sistema     Sistema operacional de 64 bits, processador baseado em x64
Caneta e toque      Nenhuma entrada à caneta ou por toque disponível para este vídeo

Edição              Windows 11 Home Single Language
Versão              24H2
Instalado em        05/12/2024
Compilação do SO    26100.2314
Experiência         Windows Feature Experience Pack 1000.26100.32.0
```

Agora vamos aos programas.

## 1) CPU-Z

O [CPU-Z] é um programa pequeno, com interface simples e intuitiva, que mostra informações sobre o [processador] (CPU), placa-mãe, memória RAM e placa de vídeo e permite realizar testes de desempenho (_benchmarks_). Seu _site_ oferece um instalador, mas também o programa e seus arquivos compactados em um [arquivo ZIP][zip], de modo que você não precisa instalar o programa para usá-lo.

{% include image.html src='/files/2025/01/cpu-z-01.jpg' %}

<div class="row">
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-02.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-03.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-04.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-05.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-06.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-07.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-08.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-09.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-10.jpg' %}
    </div>
    <div class="col-md-3">
        {% include image.html src='/files/2025/01/cpu-z-11.jpg' %}
    </div>
</div>

Indo em **Tools > Save Report as .HTML**, você pode gerar um relatório como [este][relatorio-cpu-z], que pode ser enviado para outra pessoa, caso você precise de suporte e ela esteja pedindo informações sobre o _hardware_ do seu computador.

## 2) GPU-Z

O [GPU-Z] é igualmente simples, pequeno e intuitivo, mas focado na placa de vídeo (GPU). Sobre esse componente do computador, ele apresenta mais informações que o CPU-Z. Seu _site_ oferece apenas um executável para _download_, que ao ser iniciado pergunta se quer instalar o programa ou iniciá-lo diretamente sem instalação.

<div class="row">
    <div class="col-lg-6">
        {% include image.html src='/files/2025/01/gpu-z-1.gif' %}
    </div>
    <div class="col-lg-6">
        {% include image.html src='/files/2025/01/gpu-z-2.gif' %}
    </div>
    <div class="col-lg-6">
        {% include image.html src='/files/2025/01/gpu-z-3.gif' %}
    </div>
    <div class="col-lg-6">
        {% include image.html src='/files/2025/01/gpu-z-4.gif' %}
    </div>
</div>

Esse programa não conta com uma funcionalidade de relatório, mas ele facilita fazer uma captura da tela atual usando o ícone da câmera fotográfica no canto superior direito da tela.

## 3) HWiNFO

Dos três programas listados até agora, o [HWiNFO] é o que fornece informações mais detalhadas sobre os componentes do computador. Também é o único com interface traduzida para o português, o que pode facilitar bastante a leitura das informações, se você não domina a língua inglesa. É possível baixar do seu _site_ um instalador ou uma versão portátil (_portable_) do programa, que é um arquivo ZIP, ou seja, dispensa instalação. Ao ser iniciado, o programa apresenta uma tela com informações resumidas sobre o computador, e outra bipartida mais completa, com os componentes organizados em uma árvore à esquerda e informações mais detalhadas sobre o componente selecionado à direita.

{% include image.html src='/files/2025/01/hwinfo-1.jpg' %}

{% include image.html src='/files/2025/01/hwinfo-2.jpg' %}

{% include image.html src='/files/2025/01/hwinfo-3.jpg' %}

<div class="row">
    <div class="col-md-4">
        {% include image.html src='/files/2025/01/hwinfo-4.jpg' %}
    </div>
    <div class="col-md-4">
        {% include image.html src='/files/2025/01/hwinfo-5.jpg' %}
    </div>
    <div class="col-md-4">
        {% include image.html src='/files/2025/01/hwinfo-6.jpg' %}
    </div>
</div>

Assim como o CPU-Z, o HWiNFO permite salvar um relatório em formato HTML clicando no botão **Relatório** ([exemplo][relatorio-hwinfo]).

## Extra: AIDA64

O [AIDA64] fornece informações detalhadas não apenas do _hardware_ mas também do _software_ instalado no computador. Também possui interface em português. Listo esse programa como um extra porque ele não é exatamente gratuito: é um programa comercial que é vendido em algumas edições com funcionalidades e preços diferentes. A edição mais simples, o AIDA64 Extreme, pode ser experimentada (_trial_) gratuitamente por 30 dias -- tempo mais que suficiente para você usá-lo para checar as informações sobre o seu computador e salvá-las em um relatório HTML caso queira conferi-las depois.

{% include image.html src='/files/2025/01/aida64-1.jpg' %}

<div class="row">
    <div class="col-md-4">
        {% include image.html src='/files/2025/01/aida64-2.jpg' %}
    </div>
    <div class="col-md-4">
        {% include image.html src='/files/2025/01/aida64-3.jpg' %}
    </div>
    <div class="col-md-4">
        {% include image.html src='/files/2025/01/aida64-4.jpg' %}
    </div>
</div>

O relatório HTML gerado pelo AIDA64 é o mais completo de todos ([exemplo][relatorio-aida64]).

Caso você trabalhe profissionalmente com suporte ou manutenção de computadores, considere adquirir uma licença desse programa.

## Conclusão

O que achou dos programas? Gostou? Você adicionaria algum programa a essa lista? Ficou alguma dúvida? Comenta aí! Até a próxima!

[hardware]:                 {% post_url 2012-04-09-componentes-de-um-computador-hardware-e-software %}
[Windows]:                  https://www.microsoft.com/pt-br/windows/
[acer]:                     https://www.acer.com/br-pt/predator/laptops/helios/helios-neo-16
[comprar]:                  {% post_url 2015-11-27-como-escolher-um-bom-computador-para-comprar %}
[Qual Notebook Comprar]:    https://quenotebookcomprar.com.br/acer-predator-helios-neo-phn16-72-99my/
[Notebook Check]:           https://www.notebookcheck.net/Acer-Predator-Helios-Neo-16-2024-review-Gaming-laptop-with-RTX-4070-and-DCI-P3-panel.834996.0.html
[CPU-Z]:                    https://www.cpuid.com/softwares/cpu-z.html
[processador]:              {% post_url 2012-04-08-minha-pesquisa-cientifica-sobre-processadores %}
[zip]:                      https://support.microsoft.com/pt-br/windows/compactar-e-descompactar-arquivos-8d28fa72-f2f9-712f-67df-f80cf89fd4e5
[relatorio-cpu-z]:          /files/2025/01/relatorio-cpu-z.html
[GPU-Z]:                    https://www.techpowerup.com/download/techpowerup-gpu-z/
[HWiNFO]:                   https://www.hwinfo.com/download/
[relatorio-hwinfo]:         /files/2025/01/relatorio-hwinfo.html
[AIDA64]:                   https://www.aida64.com/downloads
[relatorio-aida64]:         /files/2025/01/relatorio-aida64.html
