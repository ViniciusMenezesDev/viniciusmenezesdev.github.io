---
date: '2026-01-30 20:05:00 GMT-3'
layout: post
published: true
title: 'Como configurar a frequência do ponto de acesso Wi-Fi para reduzir a interferência e melhorar o sinal - parte 2: faixa de 5 GHz'
image: /files/2026/01/wifi-analyzer.jpg
---

Vimos na [parte 1] deste artigo os diferentes tipos de ondas de rádio existentes, como evoluíram os padrões de Wi-Fi, as faixas de frequências usadas por esses padrões e como analisar o uso do espectro na vizinhança usando o aplicativo [WiFiAnalyzer] para [Android] e o WinBox, que é o utilitário de configuração do roteador [MikroTik]. Começamos nossa análise e configuração pela faixa de 2,4 GHz e agora na parte 2 vamos analisar e configurar a faixa de 5 GHz.

A faixa de 5 GHz é dividida em mais canais e com maior espaçamento do que a faixa de 2,4 GHz, o que reduz bastante a sobreposição e a interferência entre redes. Esses canais são organizados em diferentes blocos, alguns de uso livre e outros sujeitos a regras especiais (como detecção de radar), permitindo larguras maiores e melhor desempenho. Por haver mais canais disponíveis, é mais fácil escolher um canal limpo, tornando o Wi-Fi em 5 GHz mais rápido e estável, especialmente em ambientes com muitas redes próximas. Dependendo do roteador, é possível combinar canais de 20 MHz para formar canais de 40, 80 ou até mesmo 160 MHz.

{% include image.html src="/files/2026/01/canais-5-ghz.png" caption="Canais da faixa de 2,4 GHz. Crédito da imagem: [Wireless LAN Professionals](https://d2cpnw0u24fjm4.cloudfront.net/wp-content/uploads/Wi-Fi-Channel-Allocations-5GHz-and-2.4GHz-WLAN-Pros.pdf)." %}

Nessa faixa, devemos nos atentar aos canais com restrições, que são os canais **DFS** (_Dynamic Frequency Selection_, seleção dinâmica de frequência, em inglês). Esses são canais que compartilham a mesma faixa de frequência usada por radares, como os meteorológicos e aeronáuticos. Para evitar interferir nesses sistemas críticos, os roteadores que usam canais DFS são obrigados a monitorar constantemente a presença de sinais de radar e, se detectarem algum, trocar automaticamente de canal. Esses canais costumam ser menos congestionados e podem oferecer melhor desempenho, mas podem causar trocas inesperadas de canal e pequenas interrupções quando essas trocas acontecem.

Se quiser mais informações sobre os canais e suas frequências, consulte esta página da [Wikipedia] que tem tabelas bem detalhadas:

- [List of WLAN channels - Wikipedia][Wikipedia]

Assim como fizemos na [parte 1] com a faixa de 2,4 GHz, vamos analisar a faixa de 5 GHz usando o aplicativo [WiFiAnalyzer] (lembrando que nas abas **Gráfico** e **Avaliações** devemos mudar para a faixa de 5 GHz, há uma opção para fazer essa mudança na parte superior da tela):

<div class="row">
    <div class="col-md">
        {% include image.html src="/files/2026/01/wifi-analyzer-08.jpg" caption="Gráfico da faixa de 5 GHz" %}
    </div>
    <div class="col-md">
        {% include image.html src="/files/2026/01/wifi-analyzer-09.jpg" caption="Avaliação da faixa de 5 GHz" %}
    </div>
</div>

Como há muitos canais possíveis na faixa de 5 GHz, talvez você tenha que virar o celular para ver a lista completa dos **Canais melhores**:

{% include image.html src="/files/2026/01/wifi-analyzer-10.jpg" %}

Curiosamente, meu roteador [MikroTik] na [configuração padrão][MikroTik] não fornecia uma rede de 5 GHz que eu conseguisse conectar pelo computador ou pelo celular. Pode reparar que a rede (`AntonioMedeiros-5GHz`) não aparece no gráfico acima. Não sei o motivo de isso acontecer (se você souber, por favor, comente), mas depois com a configuração manual consegui selecionar um bom canal sem interferências que consigo usar tanto no computador quanto no celular.

No caso da faixa de 5 GHz, também conseguimos usar o **Freq. Usage** (lembrar de mudar a **Interface** para **wlan2**):

{% include image.html src="/files/2026/01/mikrotik-wifi-06.png" %}

A frequência de 5180 corresponde ao canal 36, a de 5200 ao canal 40, as duas combinadas formam o canal 38, e assim por diante (confira a [Wikipedia]).

Também conseguimos usar o **Scanner** (lembrar de mudar a **Interface**):

{% include image.html src="/files/2026/01/mikrotik-wifi-07.png" %}

Ao que parece, ninguém na vizinhança usa frequências mais altas, acima de 5660 MHz. Na faixa de 5 GHz, meu MikroTik é capaz de ir até 5820 MHz.

De posse dessas informações, já podemos ajustar as configurações da rede.

Se quiser fazer comparações depois, lembre-se de anotar a intensidade do sinal em cada cômodo antes e depois de ajustar a configuração.

No WinBox, faça duplo-clique na segunda antena (**wlan2**) para configurá-la.

{% include image.html src="/files/2026/01/mikrotik-wifi-08.png" %}

Depois de um tanto de tentativa e erro, a configuração que funcionou para mim foi:

- **Channel Width** (largura do canal) = `20/40MHz eC`
- **Frequency** (frequência) = `5700`

(isso equivale à combinação dos canais 136 e 140 de 20 MHz)

Aqui, quero fazer algumas observações.

Na lista de frequências para escolher, perceba que algumas estão destacadas em **negrito**. Isso indica os canais permitidos e recomendados de acordo com o país configurado, que estão em conformidade com as normas regulatórias e são procurados pela maioria dos dispositivos. Esses canais são considerados seguros, oferecem melhor desempenho e menor risco de interferência, enquanto frequências sem negrito podem exigir configuração manual dos dispositivos, causar instabilidade ou até violar regulamentações. Definir corretamente o país garante que apenas canais legais e estáveis sejam usados na rede Wi-Fi.

O país é definido no campo **Country** e, no meu caso, já está como `brazil`.

Já na lista de larguras de canal para escolher, perceba que é oferecido `20MHz`, mas também `20/40MHz` com as opções `eC`, `Ce` e `XX` e `20/40/80MHz` com as opções `Ceee`, `eCee`, `eeCe`, `eeeC` e `XXXX`. O que querem dizer essas letras?

{% include image.html src="/files/2026/01/mikrotik-wifi-09.jpg" %}

Pelo que [pesquisei][forum-mikrotik], o MikroTik permite combinar canais de 20 MHz para fornecer 40 ou 80 MHz de largura de banda. Não apenas isso, ele também permite definir qual será o canal principal (_control channel_, representado pela letra `C`) e quais serão os canais estendidos (`e`) que ampliam a largura total. Você pode ajustar a posição do canal principal para melhorar a compatibilidade com os dispositivos conectados e o desempenho e a interferência da rede. O recomendado é que o canal principal esteja na frequência mais limpa.

Nessa minha configuração, o cliente vai se conectar ao roteador inicialmente na frequência de 5700 MHz e se comunicar com uma largura de banda de 20 MHz (5690 a 5710). Se for suportado pelo cliente, ele pode combinar com o roteador usarem uma largura de banda de 40 MHz (5670 a 5710).

Se você voltar na tela do **Freq. Usage**, verá que essas frequências estão todas livres. E esse entendimento pode ser confirmado vendo tanto o gráfico de canais quanto as informações detalhadas sobre a rede no aplicativo WiFiAnalyzer.

Vejamos como está o **Gráfico** depois da configuração da rede:

<div class="row">
    <div class="col-md">
        {% include image.html src="/files/2026/01/wifi-analyzer-11.jpg" caption="Gráfico da faixa de 2,4 GHz (depois)" %}
    </div>
    <div class="col-md">
        {% include image.html src="/files/2026/01/wifi-analyzer-12.jpg" caption="Mais informações sobre a rede de 2,4 GHz" %}
    </div>
</div>

Note que a rede `AntonioMedeiros-5GHz` agora ocupa frequências livres de interferência com outras redes.

Aqui está o nível de sinal da rede `AntonioMedeiros-5GHz` reportado pelo aplicativo WiFiAnalyzer em cada cômodo do apartamento depois dos ajustes (infelizmente, não tenho como comparar com a situação anterior, porque, como disse, a rede Wi-Fi não aparecia para mim na configuração padrão do MikroTik):

{% include image.html src="/files/2026/01/sinal-5-ghz-depois.png" caption="Sinal da rede de 5 GHz (depois)" %}

Ficam evidentes as características da rede de 5 GHz: em comparação com a faixa de 2,4 GHz, permite mais velocidade e sofre menos interferência, porém tem alcance menor. Se o celular está na mesma sala que o roteador, sem paredes, portas nem janelas entre eles, a intensidade do sinal é máxima. Mas se o celular está nos quartos, o sinal é médio ou ruim.

Neste artigo, analisei apenas as faixas de 2,4 GHz e 5 GHz porque meu roteador não suporta a faixa de 6 GHz. Mas meu celular suporta essa faixa e tive a curiosidade de analisá-la usando o WiFiAnalyzer. Aparentemente, ela está completamente livre na minha vizinhança, não tem ninguém usando ainda. Quem sabe no futuro, quando eu fizer um _upgrade_ de roteador, escrevo sobre a faixa de 6 GHz.

Note que as configurações que apresentei aqui são específicas para a realidade dos meus aparelhos e das redes Wi-Fi ao redor da minha casa. Para configurar sua rede Wi-Fi da melhor forma, você deve fazer suas próprias análises usando o aplicativo WiFiAnalyzer e configurar seu roteador de acordo.

Também note que não temos controle sobre os pontos de acesso Wi-Fi dos vizinhos, que provavelmente estão no modo automático, de modo que com o passar do tempo as frequências das redes podem mudar. Então, vale a pena de tempos em tempos repetir essas análises com o WiFiAnalyzer.

Caso você tenha lido este artigo porque é o administrador da rede de um prédio, e precisa espalhar pontos de acesso para oferecer cobertura para o prédio todo, faz sentido configurar cada ponto de acesso para usar uma frequência diferente, de modo que sua rede não interfira com ela mesma. Nesse caso, esse artigo da [Ubiquiti Brasil] tem considerações interessantes para o projeto da rede.

Diante do cenário apresentado, você configuraria a rede da minha casa de forma diferente, gostaria de sugerir outra configuração? Como você configurou sua rede? Ficou alguma dúvida? Escreva nos comentários! Até a próxima!

[parte 1]:          {% post_url 2026-01-30-como-configurar-a-frequencia-do-ponto-de-acesso-wi-fi-para-reduzir-a-interferencia-e-melhorar-o-sinal-parte-1-faixa-de-2-4-ghz %}
[WiFiAnalyzer]:     https://vremsoftwaredevelopment.github.io/WiFiAnalyzer
[Android]:          https://www.android.com/intl/pt_br/
[MikroTik]:         {% post_url 2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa %}
[Wikipedia]:        https://en.wikipedia.org/wiki/List_of_WLAN_channels#5_GHz_(802.11a/h/n/ac/ax/be)
[forum-mikrotik]:   https://forum.mikrotik.com/t/wireless-fp-ce-ceee-ec-ecee-eece-and-eeec/78748
[Ubiquiti Brasil]:  https://medium.com/ubntbr/planejamento-de-canais-em-wlan-wifi-como-fazer-673233cccc6f