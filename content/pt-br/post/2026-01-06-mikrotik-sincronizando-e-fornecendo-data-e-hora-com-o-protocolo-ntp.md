---
date: "2026-01-06T23:30:00Z"
image: /files/2025/11/mikrotik-hap-ac3.jpg
title: 'MikroTik: sincronizando e fornecendo data e hora com o protocolo NTP'
tags:
- mikrotik
---

O protocolo **[NTP]** (do inglês _Network Time Protocol_, protocolo de hora para redes) é usado para sincronizar automaticamente os relógios dos dispositivos de uma rede (como servidores, computadores, celulares, roteadores e outros) a partir de referências de tempo confiáveis, que são servidores de tempo na Internet ou na rede local. No Brasil, a data e hora oficiais brasileiras podem ser sincronizadas via NTP com os servidores de hora do [NTP.br].

<!--more-->

No caso dos roteadores, é importante que estejam sempre com a data e a hora corretas porque isso garante o funcionamento adequado da rede. Com o horário certo, os _logs_ registram eventos corretamente, facilitando a identificação de problemas e incidentes de segurança; tecnologias baseadas em certificados de segurança (como HTTPS e [VPNs]) funcionam sem erros; regras agendadas, atualizações e serviços automáticos funcionam no momento certo; e a administração do roteador fica mais confiável e organizada.

Se você tem um [roteador MikroTik][MikroTik], saiba que ele é capaz tanto de sincronizar sua própria data e hora com servidores de tempo na Internet, quanto de atuar como servidor de tempo fornecendo data e hora para os computadores na rede local. Como configurá-lo como cliente e servidor NTP é o que você verá a seguir.

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

## Configurando o cliente NTP

Por padrão, o roteador MikroTik obtém o servidor NTP da operadora via [DHCP]. Para configurar o MikroTik para **não** usar esse servidor NTP, abra o WinBox e vá em **IP > DHCP Client**:

{{< image src="/files/2025/12/mikrotik-dns-01.png" >}}

Faça um duplo-clique na primeira e única interface listada e, na janela seguinte, desmarque a opção **Use Peer NTP**:

{{< image src="/files/2026/01/mikrotik-ntp-01.png" >}}

Clique em **OK** e, de volta para a janela **DHCP Client**, feche-a.

Para configurar o cliente NTP do MikroTik, vá em **System > NTP Client**:

{{< image src="/files/2026/01/mikrotik-ntp-02.png" >}}

Na janela **NTP Client**, marque a opção **Enabled** e preencha o campo **Primary NTP Server** com o endereço `2001:12ff::8` e **Secondary NTP Server** com `200.189.40.8` (essa é a [configuração recomendada pelo NTP.br][ntpbr-mikrotik] e esses servidores correspondem aos servidores `a.ntp.br` e `b.ntp.br`, respectivamente):

{{< image src="/files/2026/01/mikrotik-ntp-03.png" >}}

Clique em **Apply** para aplicar as alterações e iniciar o cliente NTP.

Se você mantiver essa janela aberta, verá que depois de um tempo (alguns segundos ou minutos) o campo **Status** mostra **synchronized**:

{{< image src="/files/2026/01/mikrotik-ntp-04.png" >}}

Agora você pode clicar em **OK** para fechar a janela.

## Conferindo a data e a hora

Para conferir a data e a hora do MikroTik, vá em **System > Clock**:

{{< image src="/files/2026/01/mikrotik-ntp-05.png" >}}

Verifique também se o fuso horário (**Time Zone Name**) está definido corretamente (`America/Sao_Paulo`). Senão, ajuste-o.

Observe também que o horário de verão não é mais usado no Brasil desde o [Decreto nº 9.772, de 25 de abril de 2019][decreto]. Assim, a opção **DST Active** deve estar desmarcada.

Estando tudo certo nessa janela, clique em **OK** para fechá-la.

## Configurando o servidor NTP

Para habilitar o servidor NTP do MikroTik, vá em **System > NTP Server**, marque a opção **Enabled** e clique em **OK**:

{{< image src="/files/2026/01/mikrotik-ntp-06.png" >}}

Feito isso, o MikroTik já está disponibilizando data e hora para os dispositivos na rede. Nos dispositivos em que a configuração do cliente NTP deve ser feita de forma manual, você já pode configurá-los para sincronizar a data e hora com o MikroTik informando seu endereço IP local (no meu caso, `10.0.0.1`).

Você também pode configurar o MikroTik para anunciar seu servidor NTP para os demais dispositivos na rede via [DHCP] (não tenho certeza se algum dispositivo considera essa informação, mas não custa tentar).

Para isso, vá em **IP > DHCP Server**. Na janela que abre, mude para a aba **Networks**, faça um duplo-clique na primeira e única rede listada e, na janela seguinte, preencha o campo **NTP Servers** com o endereço IP local do MikroTik:

{{< image src="/files/2026/01/mikrotik-ntp-07.png" >}}

Clique em **OK** e, de volta para a janela **DHCP Server**, feche-a.

Quando terminar, não se esqueça de [fazer _backup_ da configuração][backup] do MikroTik!

[NTP]:              https://ntp.br/conteudo/ntp/
[NTP.br]:           https://ntp.br/
[VPNs]:             {{% ref "2024-09-03-o-que-e-vpn-e-a-forma-mais-facil-de-usa-la-no-android-por-meio-do-app-orbot" %}}
[MikroTik]:         {{% ref "2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[DHCP]:             {{% ref "2026-01-03-mikrotik-fixando-enderecos-ip-via-dhcp" %}}
[ntpbr-mikrotik]:   https://ntp.br/guia/roteadores/#Mikrotik
[decreto]:          https://www.planalto.gov.br/ccivil_03/_ato2019-2022/2019/decreto/d9772.htm 
[backup]:           {{% ref "2025-12-05-mikrotik-como-exportar-e-fazer-backup-da-configuracao" %}}
