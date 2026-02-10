---
date: "2026-01-30T20:00:00Z"
image: /files/2026/01/wifi-analyzer.jpg
title: 'Como configurar a frequência do ponto de acesso Wi-Fi para reduzir a interferência e melhorar o sinal - parte 1: faixa de 2,4 GHz'
---

{{< image src="/files/2026/01/wifi-analyzer.jpg" >}}

Seu celular lista várias redes Wi-Fi onde você mora? Como saber se as redes dos vizinhos não estão interferindo na sua? Em grandes cidades com cada vez mais prédios, esse cenário é cada vez mais comum. Este artigo apresenta um aplicativo que te permite analisar a ocupação do espectro Wi-Fi e sugere a melhor configuração para o seu roteador.

As tecnologias sem fio se tornaram onipresentes: celulares **[4G]**, _notebooks_ com **[Wi-Fi]**, **[TVs]** analógicas, digitais, fones de ouvido **[Bluetooth]**, rádios **[AM]/[FM]**. Certamente você usa no seu dia-a-dia senão todas, algumas dessas tecnologias. No passado, os aparelhos eram conectados principalmente por fios, que geravam bagunça e poluição visual. Hoje, a bagunça e a poluição continuam existindo, só não são mais visíveis: os aparelhos atuais se conectam principalmente por **[ondas de rádio]**.

As ondas de rádio diferem principalmente quanto à sua **frequência** (o quão "rápida" é a onda), que determina seu alcance e a quantidade de dados transmitidos. Ondas de baixa frequência, como as usadas pelas rádios AM, alcançam grandes distâncias (por isso essas rádios são mais comuns no interior), mas transmitem pouca informação (daí a qualidade inferior do som). Ondas de frequência intermediária, como FM e TV, equilibram alcance e qualidade. Já ondas de alta frequência, como Wi-Fi e Bluetooth, permitem transmitir grandes volumes de dados em alta velocidade, porém têm alcance menor e sofrem mais interferências de obstáculos (como paredes e portas).

{{< image src="/files/2026/01/ondas-de-radio.jpg" >}}

Quem organiza essa bagunça e define qual tecnologia pode usar qual frequência? As faixas de frequências destinadas a cada tecnologia são definidas pelos fabricantes conforme sua função, mas também por órgãos reguladores internacionais e nacionais. Padrões técnicos como os do **[IEEE]** para Wi-Fi e Bluetooth definem como cada tecnologia funciona. No âmbito internacional, a **[ITU]** coordena o uso do espectro para evitar interferências entre países. Já em cada país, uma agência reguladora aplica essas regras localmente, por exemplo o **[FCC]** nos Estados Unidos e a **[Anatel]** no Brasil.

As redes Wi-Fi (definidas pela família de padrões **[IEEE 802.11]**) evoluíram ao longo dos anos para oferecer mais velocidade e capacidade, acompanhando o crescimento do número de dispositivos conectados. Desde as primeiras versões, mais lentas e limitadas, o Wi-Fi passou a usar frequências mais altas, canais mais largos, múltiplas antenas e técnicas para reduzir interferências, resultando em conexões mais rápidas, estáveis e capazes de atender ambientes com muitos aparelhos, como as casas modernas com dispositivos [IoT] e escritórios.

{{< image src="/files/2026/01/evolucao-wifi.webp" >}}

As frequências usadas pelas redes Wi-Fis estão nas faixas de 2,4 GHz, 5 GHz e, mais recentemente, 6 GHz:

- a faixa de **2,4 GHz** oferece maior alcance e compatibilidade com [padrões] mais antigos -- 802.11 b/g/n (na [nova nomenclatura], Wi-Fi 2/3/4) -- porém menor velocidade. Na prática, é a faixa mais usada, principalmente por aparelhos mais antigos e dispositivos IoT, uma vez que consome menos energia e os circuitos eletrônicos que a suportam são mais baratos. Como existem muitos dispositivos que operam nessa frequência (inclusive não apenas Wi-Fi: fornos de microondas, Bluetooth, etc) está bastante poluída.
- a faixa de **5 GHz** -- padrões 802.11 a/n/ac/ax (Wi-Fi 3/4/5/6) -- já é suportada pela maioria dos _smartphones_ e _notebooks_ atuais e tem sido cada vez mais usada. Em comparação com a faixa de 2,4 GHz, permite mais velocidade e sofre menos interferência, porém tem alcance menor.
- por fim, a faixa de **6 GHz** -- padrões 802.11 ax/be (Wi-Fi 6/7) -- permite velocidades muito altas e ainda menos interferência, mas exige aparelhos novos e compatíveis.

Cada uma dessas faixas também é subdividida em canais. Em cada rede Wi-Fi, roteador e dispositivos usam um canal comum para se comunicarem. Graças a isso, várias redes Wi-Fi podem coexistir próximas umas das outras, cada uma usando um canal. O problema acontece quando existem mais redes Wi-Fi do que canais disponíveis, algo comum em prédios e áreas densas. Com isso, uma ou mais redes Wi-Fi podem acabar usando o mesmo canal. Isso não quer dizer que uma rede vai conseguir acessar as informações que circulam na outra, mas que aumenta o **ruído**, com os **sinais** das redes interferentes "disputando espaço" no ar. Quando há interferência, os dispositivos precisam repetir transmissões, o que causa lentidão, quedas de conexão e instabilidade.

Quer ter uma ideia de como está o "espaço aéreo" na sua vizinhança? Se você tem um celular com [Android], pode baixar da [Play Store] o aplicativo **[WiFiAnalyzer]**. Gratuito e de [código aberto], esse aplicativo ajuda a analisar as redes Wi-Fi ao seu redor, listando os pontos de acesso próximos, as intensidades dos seus sinais, canais usados e o quão "congestionados" esses canais estão. Ele ainda sugere quais seriam os melhores canais para seu ponto de acesso, de modo que você possa reconfigurá-lo para otimizar o desempenho da sua rede Wi-Fi.

A seguir, mostro como usei esse aplicativo para configurar meu roteador [MikroTik] e melhorar a rede Wi-Fi do meu apartamento.

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

Comecemos analisando a faixa de 2,4 GHz.

Os canais da faixa de 2,4 GHz são divididos e numerados no Brasil do 1 ao 13, cada um ocupando uma **largura** de cerca de 20 MHz. Como esses canais ficam muito próximos uns dos outros, a maioria se sobrepõe, o que causa interferência quando redes vizinhas usam canais próximos. Por isso, na prática, apenas alguns canais não se sobrepõem entre si -- os mais usados são 1, 6 e 11 -- permitindo que redes próximas funcionem com menos interferência quando cada uma escolhe um desses canais. Dependendo do roteador, é possível combinar canais de 20 MHz para formar canais de 40 MHz.

{{< image src="/files/2026/01/canais-2-ghz-gabrielricce.webp" >}}

{{< image src="/files/2026/01/canais-2-ghz-wlanpros.png" >}}

Por exemplo, o canal 1 corresponde à **frequência central** de 2412 MHz. Como ele tem 20 MHz de largura, vai da frequência de 2402 a 2422 MHz.

Se quiser mais informações sobre os canais e suas frequências, consulte esta página da [Wikipedia] que tem tabelas bem detalhadas:

- [List of WLAN channels - Wikipedia][Wikipedia]

Para analisar o uso da faixa de 2,4 GHz na vizinhança, baixe o aplicativo WiFiAnalyzer da Play Store:

<div class="row">
    <div class="col-md">
        <div class="image no-ads-here text-center mb-3">
            <a href="https://play.google.com/store/apps/details?id=com.vrem.wifianalyzer" title="">
                <img src="/assets/img/download-google-play.png" alt="" class="img-fluid" style="width: 200px;">
            </a>
        </div>
    </div>
</div>

Ao abrir o aplicativo pela primeira vez, ele explica porque precisa que você desative a limitação na busca por Wi-Fi e conceda permissão para que ele possa acessar a localização:

{{< image src="/files/2026/01/wifi-analyzer-01.jpg" >}}

Comece permitindo que o aplicativo acesse a localização. Também ative a localização nas configurações do sistema, caso não esteja ativada.

Depois, [ative as opções do desenvolvedor][developer-tools] e desative a opção **Limitar busca por Wi-Fi**:

{{< image src="/files/2026/01/wifi-analyzer-02.jpg" >}}

Então, volte ao aplicativo WiFiAnalyzer.

A tela inicial (aba **Redes**) lista todas as redes Wi-Fi que o celular consegue perceber na vizinhança, com informações detalhadas sobre cada uma delas, como intensidade do sinal, canal usado, distância aproximada até o roteador, largura de banda e modelo do roteador:

{{< image src="/files/2026/01/wifi-analyzer-03.jpg" >}}

Para comparação, a rede Wi-Fi à qual o celular está conectado é fixada no topo. Meu roteador fornece as redes `AntonioMedeiros-2GHz` e `AntonioMedeiros-5GHz`.

Observe que a **intensidade do sinal** Wi-Fi é medida em dBm negativos. Quanto maior for esse número (menos negativo, mais próximo de zero), mais forte é o sinal. Então, por exemplo, -36dBm é melhor que -59dBm.

A aba **Gráfico** mostra os canais de Wi-Fi e como cada rede está usando esses canais (inclusive como elas estão interferindo umas nas outras). As redes que aparecem mais acima apresentam sinal mais forte onde está o celular. É possível selecionar na parte superior a faixa de frequência desejada (2,4 GHz, 5 GHz ou 6 GHz):

{{< image src="/files/2026/01/wifi-analyzer-04.jpg" >}}

A aba **Avaliações** mostra quantas redes estão usando cada canal e atribui notas a cada canal, também recomenda quais seriam os melhores canais que poderiam ser usados pelo roteador (aqui também é possível selecionar a faixa):

{{< image src="/files/2026/01/wifi-analyzer-05.jpg" >}}

O MikroTik, que é um roteador bastante completo, também permite que você confira como as redes Wi-Fi próximas estão ocupando o espectro. Para isso, com o WinBox aberto, vá em **Wireless > Wireless**:

{{< image src="/files/2026/01/mikrotik-wifi-01.png" >}}

A janela que abre lista as antenas do roteador (no caso do [MikroTik hAP ac³][hap_ac3], são duas, a primeira para a faixa de 2,4 GHz e a segunda para a faixa de 5 GHz):

{{< image src="/files/2026/01/mikrotik-wifi-02.png" >}}

Para conferir o uso de cada canal, clique no botão **Freq. Usage**. Na janela que abre, selecione a **Interface** (nesse caso, a primeira, para a faixa de 2,4 GHz, **wlan1**) e clique em **Start** (iniciar). Depois de alguns segundos, o MikroTik mostra a porcentagem de uso (**Usage**) e o nível de ruído (**Noise Floor**) para cada frequência (2412 corresponde ao canal 1, 2417 ao canal 2, e assim por diante):

{{< image src="/files/2026/01/mikrotik-wifi-03.png" >}}

Observe que a **intensidade do ruído** Wi-Fi também é medida em dBm negativos. Mas, diferente da intensidade do sinal, aqui nos interessa o menor número (mais negativo, mais longe de zero). Então, por exemplo, -102dBm é melhor que -98dBm.

Quando terminar, clique em **Stop** (parar) e feche a janela.

Para conferir quais redes Wi-Fi o MikroTik consegue enxergar na vizinhança, clique no botão **Scanner**. Na janela que abre, selecione a **Interface** (de novo, a da faixa de 2,4 GHz, que é a **wlan1**). Antes de continuar, certifique-se de estar conectado ao MikroTik usando um cabo de rede, ou, se estiver conectado à rede de 2,4 GHz do MikroTik, ative a opção **Background Scan**. Quando estiver pronto, clique em **Start**. Depois de alguns segundos, o MikroTik mostra para cada rede seu **SSID**, canal (**Channel**), intensidade do sinal (**Signal Strength**), intensidade do ruído (**Noise Floor**) e a [relação sinal-ruído] (**Signal to Noise**):

{{< image src="/files/2026/01/mikrotik-wifi-04.png" >}}

Eu achei interessante ordenar as redes pelo canal (**Channel**).

Quando terminar, clique em **Stop** (parar) e feche a janela.

De posse dessas informações, já podemos ajustar as configurações da rede.

Antes de fazer isso, se você quiser depois comparar o sinal da sua rede antes e depois dos ajustes, convém visitar cada cômodo da casa ou apartamento com o celular e o aplicativo aberto na aba **Redes** e anotar a intensidade do sinal em cada cômodo. Apresentarei meu "antes e depois" no final.

No WinBox, faça duplo-clique na primeira antena (**wlan1**) para configurá-la.

Vou seguir a sugestão do aplicativo WiFiAnalyzer e configurar a antena de 2,4 GHz para usar o canal 1:

- **Channel Width** (largura do canal) = `20MHz`
- **Frequency** (frequência) = `2412`

{{< image src="/files/2026/01/mikrotik-wifi-05.png" >}}

Clique em **OK** para aplicar as alterações, que devem surtir efeito em alguns segundos.

Depois isso, podemos voltar ao aplicativo WiFiAnalyzer e conferir como está o **Gráfico** (note que você pode tocar em qualquer rede para obter mais informações sobre ela, daí a segunda tela):

<div class="row">
    <div class="col-md">
        {{< image src="/files/2026/01/wifi-analyzer-06.jpg" >}}
    </div>
    <div class="col-md">
        {{< image src="/files/2026/01/wifi-analyzer-07.jpg" >}}
    </div>
</div>

Aqui está o nível de sinal da rede `AntonioMedeiros-2GHz` reportado pelo aplicativo WiFiAnalyzer em cada cômodo do apartamento antes e depois dos ajustes (os testes nos quartos foram feitos com as portas e janelas fechadas):

<div class="row">
    <div class="col-md">
        {{< image src="/files/2026/01/sinal-2-ghz-antes.png" >}}
    </div>
    <div class="col-md">
        {{< image src="/files/2026/01/sinal-2-ghz-depois.png" >}}
    </div>
</div>

Como se vê, na faixa de 2,4 GHz houve uma melhoria, ainda que mínima, em todos os cômodos.

Começar ajustando a faixa de 2,4 GHz pode ser bom para entender melhor os conceitos, uma vez que há menos canais e frequências disponíveis. Mas o ajuste mais interessante mesmo está na faixa de 5 GHz, que disponibiliza muito mais canais, portanto há mais possibilidades para configurarmos uma rede Wi-Fi com bom desempenho e livre de interferências. Analisaremos e configuraremos a faixa de 5 GHz na [parte 2] deste artigo.

[4G]:                   https://pt.wikipedia.org/wiki/4G
[Wi-Fi]:                https://pt.wikipedia.org/wiki/Wi-Fi
[TVs]:                  https://pt.wikipedia.org/wiki/Televis%C3%A3o
[Bluetooth]:            https://pt.wikipedia.org/wiki/Bluetooth
[AM]:                   https://pt.wikipedia.org/wiki/R%C3%A1dio_AM
[FM]:                   https://pt.wikipedia.org/wiki/R%C3%A1dio_FM
[ondas de rádio]:       https://brasilescola.uol.com.br/quimica/ondas-radio.htm
[IEEE]:                 https://www.ieee.org/
[ITU]:                  https://www.itu.int/
[FCC]:                  https://www.fcc.gov/
[Anatel]:               https://www.gov.br/anatel/pt-br
[IEEE 802.11]:          https://en.wikipedia.org/wiki/IEEE_802.11
[IoT]:                  https://pt.wikipedia.org/wiki/Internet_das_coisas
[padrões]:              https://www.alura.com.br/artigos/entendendo-os-padroes-de-wi-fi
[nova nomenclatura]:    https://www.wi-fi.org/news-events/newsroom/wi-fi-alliance-introduces-wi-fi-6
[Android]:              https://www.android.com/intl/pt_br/
[Play Store]:           https://play.google.com/store/apps/details?id=com.vrem.wifianalyzer
[WiFiAnalyzer]:         https://vremsoftwaredevelopment.github.io/WiFiAnalyzer
[código aberto]:        https://github.com/VREMSoftwareDevelopment/WiFiAnalyzer
[MikroTik]:             {{% ref "post/2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[Wikipedia]:            https://en.wikipedia.org/wiki/List_of_WLAN_channels#2.4_GHz_(802.11b/g/n/ax/be)
[developer-tools]:      https://www.google.com/search?q=como+ativar+as+op%C3%A7%C3%B5es+do+desenvolvedor+no+android
[hap_ac3]:              https://mikrotik.com/product/hap_ac3
[relação sinal-ruído]:  https://pt.wikipedia.org/wiki/Rela%C3%A7%C3%A3o_sinal-ru%C3%ADdo
[parte 2]:              {{% ref "post/2026-01-30-como-configurar-a-frequencia-do-ponto-de-acesso-wi-fi-para-reduzir-a-interferencia-e-melhorar-o-sinal-parte-2-faixa-de-5-ghz" %}}