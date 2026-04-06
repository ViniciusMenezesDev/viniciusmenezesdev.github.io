---
date: "2026-01-03T21:30:00Z"
image: /files/2025/11/mikrotik-hap-ac3.jpg
title: 'MikroTik: fixando endereços IP via DHCP'
tags:
- mikrotik
---

O protocolo **[DHCP]** (do inglês _Dynamic Host Configuration Protocol_, protocolo de configuração dinâmica de _host_) serve para configurar automaticamente dispositivos quando são conectados à rede. Para que um computador (ou celular, ou _smart_ TV, etc.) possa se comunicar com outros computadores na mesma rede e na Internet, precisa de um endereço IP para si, assim como saber os endereços IP do _gateway_ e do [DNS]. Você pode definir essas configurações manualmente ou, o que é mais comum no caso de redes domésticas, obtê-las automaticamente do modem da operadora. Isso torna a conexão mais simples, evita erros de configuração e permite que vários dispositivos usem a rede ao mesmo tempo de forma organizada.

<!--more-->

No exemplo anterior, dizemos que o modem da operadora atua como servidor DHCP e o computador, como cliente DHCP.

Se você faz experimentos com redes, computadores, celulares e [máquinas virtuais], como eu, pode achar interessante fixar os endereços IP dos dispositivos. Configurar o servidor DHCP para atribuir sempre os mesmos endereços IP aos mesmos dispositivos evita ter que configurar cada dispositivo manualmente, facilita o gerenciamento da rede, centralizando a configuração, a criação de regras de _firewall_, e torna a manutenção mais simples e organizada.

Se você tem um [roteador MikroTik][MikroTik], ele atua como cliente DHCP ao obter as configurações de que precisa do modem da operadora (ou de outro equipamento na rede da operadora, se o modem estiver em [modo _bridge_][bridge]), mas para os dispositivos que estiverem conectados a ele, ele atua como servidor DHCP, fornecendo as configurações da própria rede. Veja a seguir como configurar o roteador MikroTik para fixar os endereços IP dos dispositivos via DHCP.

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

Para configurar os endereços IP fornecidos pelo servidor DHCP do MikroTik, abra o WinBox e vá em **IP > DHCP Server**:

{{< image src="/files/2026/01/mikrotik-dhcp-01.png" >}}

Na janela **DHCP Server**, mude para a aba **Leases** (concessões):

{{< image src="/files/2026/01/mikrotik-dhcp-02.png" >}}

No meu caso, por enquanto, vejo apenas meu _notebook_ (coluna **Active Host Name** igual a `predator`).

Para fixar esse endereço IP, selecione a linha dessa concessão e clique no botão **Make Static**.

Só que, no momento, ele está com o endereço IP `10.0.0.254` (coluna **Active Adress**). Eu quero fixar para ele o endereço IP `10.0.0.2`.

Para editar uma concessão, faça duplo-clique na linha dela.

Altere o campo **Address** para o endereço IP desejado e clique em **OK**:

{{< image src="/files/2026/01/mikrotik-dhcp-03.png" >}}

Em um primeiro momento, as colunas **Address** e **Active Adress** diferem. A primeira mostra o endereço IP configurado, enquanto a segunda mostra o endereço IP atual. Mas basta desconectar e conectar o dispositivo novamente para que ele receba o novo endereço IP. E aí as colunas passam a coincidir.

Você não precisa conectar previamente um dispositivo à rede Wi-Fi do MikroTik para só depois definir qual endereço IP ele deve receber. Se de antemão você souber o [endereço MAC][MikroTik] do dispositivo, pode já cadastrá-lo e atribuir-lhe um endereço IP, de modo que na primeira conexão ele já receba o endereço IP certo.

Você pode descobrir o endereço MAC acessando as configurações de rede no sistema operacional do dispositivo. Alguns aparelhos também vem com uma etiqueta com o endereço MAC informado nela. Se você tiver acesso ao modem da operadora, caso ele ainda não esteja em modo _bridge_ e os dispositivos de casa estejam conectados a ele, também pode acessá-lo e obter uma lista dos dispositivos, seus endereços IP atuais e seus endereços MAC.

Para cadastrar uma concessão, use o botão **Add** (adicionar):

{{< image src="/files/2026/01/mikrotik-dhcp-04.png" >}}

Informe o endereço MAC (**MAC Address**) do dispositivo, o endereço IP (**Address**) que ele deve receber e clique em **OK**:

{{< image src="/files/2026/01/mikrotik-dhcp-05.png" >}}

Para ajudar a identificar os diversos dispositivos cadastrados, você pode inserir um comentário em cada um deles. Para isso, clique com o botão direito em uma concessão e clique em **Comment**:

{{< image src="/files/2026/01/mikrotik-dhcp-06.png" >}}

Digite algo para identificar essa concessão e clique em **OK**:

{{< image src="/files/2026/01/mikrotik-dhcp-07.png" >}}

Repita isso para cada um dos dispositivos cadastrados:

{{< image src="/files/2026/01/mikrotik-dhcp-08.png" >}}

Quando terminar de cadastrar todos os seus dispositivos e os endereços IP que eles devem receber, lembre-se de [fazer _backup_ da configuração][backup] do MikroTik.

Note que, graças à configuração inicial que fizemos (**DHCP Server Range** = `10.0.0.200-10.0.0.254`), sempre que você conectar um dispositivo novo à rede do MikroTik, ele receberá um endereço IP alto:

{{< image src="/files/2026/01/mikrotik-dhcp-09.png" >}}

Isso facilita a identificação de novos dispositivos, que só tem três possibilidades: ou é um dispositivo novo que você ainda não fixou um endereço IP, ou é um dispositivo de alguém que está visitando a sua casa, ou é um invasor.

Você pode conferir um histórico de todos os dispositivos que se conectaram ao MikroTik e obtiveram endereços IP via DHCP na tela **Log**:

{{< image src="/files/2026/01/mikrotik-dhcp-10.png" >}}

A tela **Log** na verdade mostra um histórico de várias coisas que o MikroTik faz. Para filtrar as informações relacionadas a DHCP, defina um filtro como o seguinte (**Topics**, **contains**, `dhcp`):

{{< image src="/files/2026/01/mikrotik-dhcp-11.png" >}}

[DHCP]:                 https://pt.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol
[DNS]:                  {{% ref "2025-12-30-mikrotik-como-configurar-o-dns" %}}
[máquinas virtuais]:    https://linuxkamarada.com/pt/2019/10/08/virtualbox-a-forma-mais-facil-de-conhecer-o-linux-sem-precisar-instala-lo/
[MikroTik]:             {{% ref "2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[bridge]:               {{% ref "2022-10-02-configurando-o-modem-sagemcom-fast-3895-em-modo-bridge" %}}
[backup]:               {{% ref "2025-12-05-mikrotik-como-exportar-e-fazer-backup-da-configuracao" %}}
