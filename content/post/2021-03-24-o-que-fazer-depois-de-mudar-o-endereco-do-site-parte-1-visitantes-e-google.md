---
date: "2021-03-24T10:00:00Z"
excerpt: 'Mudar um site de endereço não é fácil se esse site já existe há algum tempo
  e já tem alguma presença na busca do Google e nas redes sociais. Recentemente mudei
  dois dos meus sites de hospedagem, do GitHub Pages para o GitLab Pages, e também
  de endereço: o site do Linux Kamarada mudou de kamarada.github.io para linuxkamarada.com
  e este site mudou de vinyanalista.github.io para antoniomedeiros.dev. Registrei
  ambos os domínios pela Namecheap. No site do Linux Kamarada fiz um texto explicando
  essa mudança.'
image: /files/2021/03/mudanca-de-endereco.jpg
title: 'O que fazer depois de mudar o endereço do site — parte 1: visitantes e Google'
---

{% capture revisao_links_quebrados %}

O _site_ passou por uma revisão de _links_ quebrados. Alguns _links_ nessa publicação podem ter sido removidos ou atualizados.

{% endcapture %}

{% include update.html date="02/08/2023" message=revisao_links_quebrados %}

{{< image src="/files/2021/03/mudanca-de-endereco.jpg" >}}

Mudar um _site_ de endereço não é fácil se esse _site_ já existe há algum tempo e já tem alguma presença na busca do [Google] e nas redes sociais. Recentemente mudei dois dos meus _sites_ de hospedagem, do [GitHub Pages][github-pages] para o [GitLab Pages][gitlab-pages], e também de endereço: o _site_ do [Linux Kamarada][linuxkamarada.com] mudou de `kamarada.github.io` para [linuxkamarada.com] e este _site_ mudou de `vinyanalista.github.io` para [antoniomedeiros.dev]. Registrei ambos os domínios pela [Namecheap]. No _site_ do Linux Kamarada fiz [um texto explicando essa mudança][moving-to-gitlab].

Meus _sites_ usam alguns serviços de terceiros: [Google Search Console][search], [Google AdSense][adsense], [Google Analytics][analytics-1], [Google Programmable Search Engine][cse-1], [Disqus], [AddThis], [A-ADS] e [Brave Rewards][brave-rewards]. Depois de providenciar que as páginas fossem servidas nos novos endereços, tive que comunicar a mudança aos visitantes e também a cada um desses serviços.

Fiz isso primeiro para o Linux Kamarada, tomei nota, e agora vou fazer o mesmo para este _site_, capturando telas e mostrando para você como fazer, caso você esteja precisando fazer o mesmo para o seu _site_ que mudou de endereço recentemente também.

## Redirecionando as páginas

Para manter os _links_ antigos funcionando e redirecionando para o novo endereço, o ideal é configurar o redirecionamento [HTTP 301][http-301] no endereço antigo. Pesquise como configurar redirecionamentos 301 no seu servidor _web_ ou serviço de hospedagem.

Se isso não for possível, ao menos configurar o redirecionamento na própria página HTML usando a _tag_ `<meta http-equiv="refresh"`. Quando o navegador se depara com essa _tag_, ele mesmo redireciona o usuário para o novo endereço. Essa _tag_ também permite configurar o tempo em segundos em que o navegador deve redirecionar, sendo `0` para imediatamente.

E também informar o [URL canônico][canonical] por meio da _tag_ `<link rel="canonical"`. Quando você tem duas páginas idênticas ou muito parecidas, o URL canônico informa para os robôs do Google qual dessas páginas deve ser considerada a principal. A ideia é que tanto o _site_ antigo quanto o novo devem informar o novo como URL canônico.

As _tags_ HTML devem ser inseridas dentro da seção `<head>` de cada página do _site_.

No endereço antigo, usar as duas _tags_:

```html
<meta http-equiv="refresh" content="0; url=endereco_novo">
<link rel="canonical" href="endereco_novo" />
```

No endereço antigo, usar apenas a _tag_ `<link rel="canonical"`:

```html
<link rel="canonical" href="endereco_novo" />
```

Veja esse exemplo:

- Endereço antigo: [https://kamarada.github.io/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/](https://kamarada.github.io/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/) (você pode ver o [código-fonte no GitHub](https://github.com/kamarada/kamarada.github.io/blob/master/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/index.html))

```html
<head>
    <!-- ... -->
    <link rel="canonical" href="https://linuxkamarada.com/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/" />
    <meta http-equiv="refresh" content="10; url=https://linuxkamarada.com/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/">
    <!-- ... -->
</head>
```

Perceba que eu defini o tempo como `10`, isso quer dizer que o navegador vai exibir a página e só 10 segundos depois redirecionar. Você pode deixar uma mensagem na página informando ao usuário do redirecionamento, mas isso é opcional, fica a seu critério.

{{< image src="/files/2021/03/mudanca-de-endereco-aviso.jpg" >}}

- Endereço novo: [https://linuxkamarada.com/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/](https://linuxkamarada.com/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/) (abra e inspecione para ver o código-fonte)

```html
<head>
    <!-- ... -->
    <link rel="canonical" href="https://linuxkamarada.com/pt/2021/03/05/tuxguitar-ja-pensou-aprender-guitarra-com-ajuda-do-linux/" />
    <!-- ... -->
</head>
```

### Redirecionamento no GitHub Pages

No caso do GitHub Pages, não há uma configuração explícita de redirecionamento 301, mas nada que não possamos resolver com um pouco de criatividade.

Podemos configurar um [domínio personalizado no GitHub Pages][github-domain]. Normalmente esse é o caso quando você deseja que seu _site_ hospedado no GitHub Pages seja servido por esse domínio. Mas na prática você pode fazer essa configuração mesmo quando já configurou esse mesmo [domínio personalizado no GitLab Pages][gitlab-domain]. O GitHub "reclama", mas não impede. E, na prática, faz o redirecionamento 301 para o endereço novo, que é o efeito desejado.

Acesse o repositório que hospeda seu _site_ no GitHub (por exemplo, [github.com/kamarada/kamarada.github.io](https://github.com/kamarada/kamarada.github.io)), clique em **Settings** (configurações) e na seção **GitHub Pages**, em **Custom domain** (domínio personalizado), insira seu domínio personalizado e clique em **Save** (salvar).

{{< image src="/files/2021/03/mudanca-de-endereco-github-pages.png" >}}

O GitHub percebe que o domínio novo não aponta para o GitHub Pages e "reclama" que seu domínio não está configurado corretamente. Bem, isso não importa realmente. O que realmente importa é que de alguma forma você conseguiu fazer o redirecionamento 301.

Vamos fazer um teste. Abra outra aba no navegador, abra as ferramentas do desenvolvedor (**DevTools**) teclando **F12** e selecione a aba de rede (**Network**). Tente acessar seu _site_ pelo endereço antigo e veja que acontece o redirecionamento 301 para o endereço novo.

{{< image src="/files/2021/03/mudanca-de-endereco-devtools-301.jpg" >}}

## Google Search Console

É importante avisar à busca do Google que seu _site_ mudou de endereço para que sua classificação não seja prejudicada e você não perca tráfego orgânico. E você configura como seus _sites_ aparecem na busca do Google por meio do Google Search Console.

Você (usando a mesma Conta do Google) precisa estar entre os [proprietários verificados][support-google-1] do endereço antigo e do endereço novo no Google Search Console. Além disso, você precisa já ter configurado o redirecionamento entre as páginas, como explicado acima.

Comece acessando o [Google Search Console][search], adicionando o novo endereço do seu _site_ como uma [nova propriedade][support-google-2] e [verificando][support-google-1] essa propriedade, caso já não tenha feito. Se seu _site_ já era integrado ao Google Analytics no endereço antigo, a verificação é instantânea.

Depois, no menu à esquerda, selecione o _site_ antigo na lista de propriedades e clique em **Configurações**. À direita, clique na opção **Mudança de endereço**:

{{< image src="/files/2021/03/mudanca-de-endereco-google-search-console-1.jpg" >}}

Na tela seguinte, selecione o _site_ novo e clique em **Validar e atualizar**:

{{< image src="/files/2021/03/mudanca-de-endereco-google-search-console-2.jpg" >}}

O Google Search Console vai fazer uma verificação rápida e reportar quaisquer problemas encontrados. Para prosseguir, clique em **Confirmar mudança**:

{{< image src="/files/2021/03/mudanca-de-endereco-google-search-console-3.jpg" >}}

Feito isso, a ferramenta de mudança de endereço pelo Google Search Console é concluída:

{{< image src="/files/2021/03/mudanca-de-endereco-google-search-console-4.jpg" >}}

O processo de indexação do _site_ novo e de mudança dos _links_ na busca do Google, se eu entendi certo a [documentação da ferramenta de mudança de endereço][support-google-3], pode levar até 180 dias. É um processo demorado, é verdade, mas os redirecionamentos devem garantir que o tráfego para o _site_ não seja afetado durante esse período.

## Google AdSense

O Google AdSense não permite mudar o endereço de _sites_ que já estão cadastrados e exibindo anúncios. Mas permite que você tenha vários _sites_ associados à mesma conta. Portanto, a princípio, não seria necessário remover o endereço anterior (você poderia até continuar exibindo anúncios no endereço anterior) e para exibir anúncios no endereço novo, bastaria [adicionar o novo endereço à lista de _sites_][support-google-4]. Mas não é tão simples assim: o AdSense vai revisar de novo seu _site_, como se fosse um _site_ completamente novo e desconhecido do programa, e não é garantido que será aprovado no endereço novo.

Foi o que aconteceu com [esse usuário][support-google-5] e também comigo com o _site_ do Linux Kamarada: não obstante o _site_ tenha sido aprovado no endereço anterior, já exibia anúncios desde 2015, quando enviado para aprovação no endereço novo, foi reprovado com a justificativa "Conteúdo de baixo valor". Solicitei revisão e no momento aguardo nova resposta.

{{< image src="/files/2021/03/mudanca-de-endereco-adsense-kamarada.jpg" >}}

Esse processo do Google AdSense é burocrático, manual, ineficiente e burro. Não houve mudança no conteúdo do _site_, apenas no endereço, o _site_ já exibia anúncios há anos, não havia porque recusar a exibição de anúncios no endereço novo. Já estou pesquisando redes de anúncios alternativas, se encontrar uma bacana compartilho aqui.

{% include update.html date='03/04/2021' message='Após revisão, o Google AdSense considerou o _site_ do Linux Kamarada pronto para exibir anúncios. No entanto, aconteceu o mesmo com este _site_ (antoniomedeiros.dev), que também foi reprovado, com a mesma justificativa, embora também já exibisse anúncios desde 2015. Vou solicitar revisão, agora deste _site_.' %}

Para exibir anúncios do AdSense no novo endereço do seu _site_, adicione o novo endereço como se estivesse [adicionando um _site_ novo][support-google-4]:

{{< image src="/files/2021/03/mudanca-de-endereco-adsense-novo-site.jpg" >}}

Segundo o próprio Google AdSense, a verificação do (antigo) _site_ (com novo endereço) geralmente leva alguns dias, mas pode demorar até duas semanas. O resultado da verificação é informado por _e-mail_.

## Google Analytics

Mudar o endereço do _site_ no Google Analytics é fácil, rápido, tranquilo e não faz com que ele perca dados ou os corrompa de qualquer forma.

Acesse o [Google Analytics][analytics-2]. No menu à esquerda, clique na opção **Administrador**. À direita, em **Propriedade**, selecione o _site_ na lista e clique em **Configurações da propriedade**:

{{< image src="/files/2021/03/mudanca-de-endereco-analytics-1.jpg" >}}

No campo **URL padrão**, substitua o endereço antigo pelo novo:

{{< image src="/files/2021/03/mudanca-de-endereco-analytics-2.jpg" >}}

No final da página, clique no botão **Salvar**. Pronto, simples assim.

## Google Programmable Search Engine

Se seu _site_ tem uma caixa de pesquisa programável do Google, você precisa adicionar o novo endereço do _site_ à lista de _sites_ que são pesquisados a partir dessa caixa de pesquisa.

Acesse o [Google Programmable Search Engine][cse-2]. À esquerda, em **Editar mecanismo de pesquisa**, selecione o seu _site_. À direita, em **Sites a pesquisar**, clique em **Adicionar**. Digite o endereço novo e clique em **Salvar**. Feito, é isso!

{{< image src="/files/2021/03/mudanca-de-endereco-cse-1.jpg" >}}

{{< image src="/files/2021/03/mudanca-de-endereco-cse-2.jpg" >}}

Observe que a pesquisa dentro do _site_ depende da pesquisa maior, do Google. Acompanhe a indexação do endereço novo pelo Google Search Console.

## Continua...

Como o texto é grande, decidi dividi-lo em duas partes. Nessa primeira parte, vimos como redirecionar os visitantes e os serviços do Google para o novo endereço. Na segunda parte, veremos o que fazer com outros serviços, a exemplo dos já citados Disqus e AddThis.

A segunda parte deve ser publicada em breve. Siga-me para saber assim que for liberada.

{% capture atualizacao %}[A segunda parte já está aqui! (clique para acessá-la)]({%post_url 2021-04-03-o-que-fazer-depois-de-mudar-o-endereco-do-site-parte-2-disqus-addthis-e-outros-servicos %}){% endcapture %}
{% include update.html date="03/04/2021" message=atualizacao %}

## Referências dessa primeira parte

- [How I migrated my blog from Wordpress to Octopress &mdash; Konrad Podgórski Web Developer / Software Architect][konradpodgorski]
- [Unir URLs duplicados com versões canônicas \| Central da Pesquisa Google][developers-google]
- [Redirect Github Pages to custom domain - Stack Overflow][stackoverflow-1]
- [Permanent redirect from Github gh-pages - Stack Overflow][stackoverflow-2]
- [Changing Domain Names? Learn How To Tell Google About Site Address Change - ShoutMeLoud][shoutmeloud]
- [Ferramenta Alteração de endereço - Ajuda do Google Search Console][support-google-3]
- [Changing a Domain in Google Analytics \| Zanzi Digital][zanzidigital]
- [How to Migrate Disqus Comments after Changing URL Structure - Journey Bytes][journeybytes]

[google]: https://www.google.com/
[github-pages]: https://pages.github.com/
[gitlab-pages]: https://docs.gitlab.com/ee/user/project/pages/
[linuxkamarada.com]: https://linuxkamarada.com/
[antoniomedeiros.dev]: https://antoniomedeiros.dev/
[namecheap]: https://bit.ly/kamarada-namecheap
[moving-to-gitlab]: https://linuxkamarada.com/pt/2021/03/10/linux-kamarada-esta-migrando-para-o-gitlab/

[search]: https://search.google.com/search-console/about
[adsense]: https://www.google.com.br/adsense/
[analytics-1]: https://marketingplatform.google.com/about/analytics/
[cse-1]: https://programmablesearchengine.google.com/about/
[disqus]: https://disqus.com/
[addthis]: https://www.addthis.com/
[a-ads]: https://a-ads.com/
[brave-rewards]: https://brave.com/brave-rewards/

[http-301]: https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls#expandable-8
[canonical]: https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls#definition

[github-domain]: https://docs.github.com/en/github/working-with-github-pages/configuring-a-custom-domain-for-your-github-pages-site
[gitlab-domain]: https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/

[support-google-1]: https://support.google.com/webmasters/answer/9008080?hl=pt-BR
[support-google-2]: https://support.google.com/webmasters/answer/34592?hl=pt-BR
[support-google-3]: https://support.google.com/webmasters/answer/9370220?hl=pt-BR

[support-google-4]: https://support.google.com/adsense/answer/9131547?hl=pt-BR
[support-google-5]: https://support.google.com/adsense/thread/1882966

[analytics-2]: https://analytics.google.com/

[cse-2]: https://programmablesearchengine.google.com/

[konradpodgorski]: https://konradpodgorski.com/blog/2013/10/21/how-i-migrated-my-blog-from-wordpress-to-octopress/
[developers-google]: https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls
[stackoverflow-1]: https://stackoverflow.com/a/66601856/
[stackoverflow-2]: https://stackoverflow.com/a/66602291/
[shoutmeloud]: https://www.shoutmeloud.com/site-address-change-google-search.html
[zanzidigital]: https://zanzidigital.co.uk/analytics-measurement/how-to-change-website-domain-in-google-analytics/
[journeybytes]: https://www.journeybytes.com/migrate-disqus-comments-after-changing-url-structure/
