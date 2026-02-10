---
date: "2025-12-30T02:00:00Z"
image: /files/2025/11/mikrotik-hap-ac3.jpg
title: 'MikroTik: como configurar o DNS'
---

Você pode querer usar um servidor [DNS] diferente do padrão da sua operadora de Internet por diversos motivos. Alternativas independentes geralmente fornecem respostas mais rápidas, maior privacidade, menos interferência (por exemplo, de governos, censurando _sites_), menos redirecionamentos, e ainda podem oferecer recursos extras como bloqueio de _sites_ maliciosos ou controles para os pais, melhorando a experiência e a segurança da navegação.&nbsp;

Já mostrei em outro tutorial [como descobrir qual servidor DNS é mais rápido][DNS] para a sua conexão. Veja a seguir como configurar o roteador [MikroTik] para usar esse servidor DNS na sua rede doméstica.

<!--more-->

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

Como já comentei [em outro artigo][bridge], uma vez eu tive um problema com o modem da operadora, que foi infectado por um vírus e teve os servidores DNS alterados. Como consequência, diversos _sites_ passaram a exibir anúncios indesejados em russo, já que as requisições destinadas ao [Google Analytics] (um serviço usado por muitos _sites_) eram redirecionadas para um servidor falso. Na época, resolvi o problema acessando a interface do modem, trocando a senha de administrador e corrigindo a configuração de DNS.

Você pode escolher um servidor DNS para usar com a ajuda de uma ferramenta como o [**DNS Benchmark**][DNS]. Para mais informações sobre o que é DNS e como usar o DNS Benchmark, consulte o tutorial:

- [DNS Benchmark: descubra o servidor DNS mais rápido para a sua conexão][DNS]

No meu caso, o DNS Benchmark apontou que os servidores DNS que respondem mais rápido de onde estou são os da [Cloudflare] (`1.1.1.1` e `1.0.0.1`).

{{< image src="/files/2024/09/dns-benchmark-06.jpg" >}}

O roteador MikroTik obtém o servidor DNS da operadora via [DHCP]. Para configurar o MikroTik para **não** usar esse servidor DNS, abra o WinBox e vá em **IP > DHCP Client**:

{{< image src="/files/2025/12/mikrotik-dns-01.png" >}}

Faça um duplo-clique na primeira e única interface listada e, na janela seguinte, desmarque a opção **Use Peer DNS**:

{{< image src="/files/2025/12/mikrotik-dns-02.png" >}}

Clique em **OK** e, de volta para a janela **DHCP Client**, feche-a.

Agora, para configurar quais servidores DNS o MikroTik deve usar, vá em **IP > DNS**. No campo **Servers**, informe os endereços IP dos servidores DNS (lembrando que, no meu exemplo, vou usar os da Cloudflare, `1.1.1.1` e `1.0.0.1`):

{{< image src="/files/2025/12/mikrotik-dns-03.png" >}}

Certifique-se que a opção **Allow Remote Requests** está marcada (ela já vem marcada por padrão) e clique em **OK**.

Para verificar que o MikroTik está usando os servidores DNS e resolvendo nomes corretamente, vá em **Tools > Ping**:

{{< image src="/files/2025/12/mikrotik-dns-04.png" >}}

Em **Ping To**, digite o nome de algum _site_ (pode ser, por exemplo, `antoniomedeiros.dev`, ou `instagram.com`, ou `google.com`, etc.) e clique em **Start**:

{{< image src="/files/2025/12/mikrotik-dns-05.png" >}}

O MikroTik deve resolver o nome para um endereço IP e começar a ["pingar"][ping] o _site_. Interrompa o teste clicando em **Stop**.

Com esse teste, vimos que a resolução de nomes do MikroTik está funcionando.

Vale observar que o MikroTik atua como servidor DNS na rede local e se anuncia via DHCP como servidor DNS para os dispositivos conectados a ele. Se você verificar as configurações de rede do seu computador ou celular conectados ao MikroTik, verá que ele está sendo usado como servidor DNS:

{{< image src="/files/2025/12/mikrotik-dns-06.png" >}}

(nessa imagem, estou usando o [Linux Kamarada], mas você também pode facilmente verificar as configurações de rede do [Windows], [Android], etc.)

Você também pode testar a resolução de nomes dos dispositivos conectados ao MikroTik:

{{< image src="/files/2025/12/mikrotik-dns-07.png" >}}

Para finalizar, vale observar que o MikroTik possui um cache de DNS: quando alguém na rede acessa um _site_, o roteador resolve o nome e guarda essa informação por um tempo; se outra pessoa (ou a mesma) acessar o mesmo _site_ depois, o roteador responde mais rápido, sem consultar o servidor DNS de novo. Isso deixa a navegação mais rápida. Se você tiver curiosidade de ver o cache de DNS do MikroTik, vá em **IP > DNS** e clique no botão **Cache**:

{{< image src="/files/2025/12/mikrotik-dns-08.png" >}}

Você também pode definir registros de DNS estáticos para usar na sua rede local. Para isso, clique no botão **Static**:

{{< image src="/files/2025/12/mikrotik-dns-09.png" >}}

Agora que você configurou o DNS do seu roteador MikroTik, lembre-se de [fazer _backup_ da configuração][backup].

[DNS]:              {{% ref "post/2024-09-19-dns-benchmark-descubra-o-servidor-dns-mais-rapido-para-a-sua-conexao" %}}
[MikroTik]:         {{% ref "post/2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[bridge]:           {{% ref "post/2022-10-02-configurando-o-modem-sagemcom-fast-3895-em-modo-bridge" %}}
[Google Analytics]: https://analytics.google.com/
[Cloudflare]:       https://1.1.1.1/pt-BR/dns/
[DHCP]:             {{% ref "post/2026-01-03-mikrotik-fixando-enderecos-ip-via-dhcp" %}}
[ping]:             https://pt.wikipedia.org/wiki/Ping
[Linux Kamarada]:   https://linuxkamarada.com/pt/2025/10/12/linux-kamarada-muda-sua-base-para-o-manjaro/
[Windows]:          https://www.google.com/search?q=como+verificar+qual+servidor+dns+estou+usando+no+windows
[Android]:          https://www.google.com/search?q=como+verificar+qual+servidor+dns+estou+usando+no+android
[backup]:           {{% ref "post/2025-12-05-mikrotik-como-exportar-e-fazer-backup-da-configuracao" %}}
