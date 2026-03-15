---
date: "2021-04-03T17:20:00Z"
image: /files/2021/03/mudanca-de-endereco.jpg
title: 'O que fazer depois de mudar o endereço do site — parte 2: Disqus, AddThis
  e outros serviços'
---

{{< image src="/files/2021/03/mudanca-de-endereco.jpg" >}}

Esta é a segunda parte da lista de coisas a fazer depois de mudar um _site_ de endereço. Na [primeira parte][parte-1], vimos como redirecionar as páginas, avisar os visitantes e reconfigurar os serviços do Google: Search Console, AdSense, Analytics e Programmable Search Engine. Agora, veremos como reconfigurar outros serviços: Disqus, AddThis, A-ADS, Brave Rewards e redes sociais. Se você caiu aqui de paraquedas, sugiro que comece pela primeira parte:

- [O que fazer depois de mudar o endereço do site — parte 1: visitantes e Google][parte-1]

## Disqus

[Disqus] é um serviço que adiciona seções de comentários (que ele chama de discussões) às páginas do _site_. É útil principalmente para _sites_ estáticos, como este, feito com [Jekyll] e hospedado no [GitLab Pages][gitlab-pages]. O Disqus associa as discussões à URL de cada página, de modo que mudar o endereço do _site_, em um primeiro momento, faz com que os comentários desapareçam. Felizmente, o Disqus oferece ferramentas para migrar as discussões das URLs antigas para as novas. E como configuramos o redirecionamento entre as páginas na [parte 1][parte-1], a migração do Disqus se torna ainda mais fácil.

Acesse o [Disqus] e clique em **Admin**. Em **Your Sites** (seus _sites_), selecione o _site_ que mudou de endereço (note que ainda é exibido o endereço antigo).

Na barra do topo, clique em **Moderation** (moderação). À esquerda, em **Tools** (ferramentas), clique em **Migration Tools** (ferramentas de migração):

{{< image src="/files/2021/04/mudanca-de-endereco-disqus-1.jpg" >}}

Na página seguinte, em **Redirect Crawler** (rastreador de redirecionamentos), clique em **Start Crawler** (iniciar rastreador):

{{< image src="/files/2021/04/mudanca-de-endereco-disqus-2.jpg" >}}

O Disqus informa que iniciou o rastreamento das páginas:

{{< image src="/files/2021/04/mudanca-de-endereco-disqus-3.jpg" >}}

O rastreador do Disqus vai visitar todas as páginas com comentários e, se encontrar um redirecionamento HTTP 301, vai seguir esse redirecionamento e armazenar o endereço novo da página. O Disqus diz que essa atualização pode levar até 24 horas para ser concluída, mas dependendo do tamanho do seu _site_ pode levar mais ou menos tempo que isso.

Você pode monitorar o progresso verificando os endereços nessa mesma aba **Moderation**, indo em **Tools** > **Discussions** (discussões):

{{< image src="/files/2021/04/mudanca-de-endereco-disqus-4.jpg" >}}

O Disqus também avisa o fim da migração por _e-mail_.

## AddThis

O [AddThis][addthis-1] é um serviço que facilita integrar o _site_ a diversas redes sociais, oferecendo, dentre outros recursos, botões de curtir e compartilhar. Você pode ver o AddThis em ação neste _site_ e eu até já fiz [tutorial][addthis-2] sobre ele.

Depois de mudar o _site_ de endereço, o AddThis segue funcionando no endereço novo, não é necessário fazer nenhuma mudança no código do _site_ ou na configuração no serviço, o que é muito bom e prático. A má notícia é que os contadores de compartilhamentos se perdem. E a notícia pior ainda é que não há o que fazer.

{{< image src="/files/2021/04/mudanca-de-endereco-addthis-1.png" >}}

{{< image src="/files/2021/04/mudanca-de-endereco-addthis-2.png" >}}

Isso acontece porque [esses contadores não são armazenados no próprio AddThis][addthis-academy], mas nas redes sociais. O AddThis obtém os contadores de cada rede social e calcula o total de compartilhamentos. Se o endereço da página muda, não há como atualizar esse contador em toda e cada rede social.

O _site_ [nRave] propõe uma solução de contorno. Como vimos no [tutorial do AddThis][addthis-2], é possível configurar o endereço que será compartilhado por meio da variável `addthis_share`. A solução de contorno seria para páginas que existiam antes da mudança, compartilhar o endereço antigo, e para páginas novas que foram criadas já no endereço novo, compartilhar o endereço novo. Embora fazer isso preservaria os contadores das páginas antigas, fiquei pensando nos possíveis efeitos colaterais e achei melhor abrir mão dos contadores mesmo.

É uma pena perder esses contadores por causa do "efeito manada": quanto mais vezes uma página foi compartilhada, maior a probabilidade de um novo visitante compartilhá-la também. Se seu _site_ tem contadores muito altos que você realmente não gostaria de perder, o _site_ [nRave] sugere outra alternativa que é contratar um serviço mais robusto que o AddThis, como o [Social Warfare][social-warfare], que consegue somar os contadores dos endereços antigos e novos.

## A-ADS

[A-ADS] (antes _Anonymous Ads_, "anúncios anônimos", em inglês) é uma rede de anúncios tal qual o Google AdSense, porém menos conhecida. Ela remunera os anúncios exibidos no _site_ em [Bitcoin]. Você pode se cadastrar no serviço com _e-mail_ e senha, mas é opcional. Se não quiser se cadastrar, você pode começar a exibir anúncios simplesmente fornecendo o endereço da carteira _bitcoin_ onde quer receber (daí o "anônimos" no nome). Diferente do AdSense, o A-ADS não precisa de aprovação: criado o anúncio, já pode ser exibido no _site_.

Cada anúncio do A-ADS é vinculado a um _site_. Ao mudar o endereço do _site_, você pode acessar sua conta, editar o cadastro do anúncio, fornecer o novo endereço do _site_ e salvar:

{{< image src="/files/2021/04/mudanca-de-endereco-a-ads.jpg" >}}

Mas observe também que sua conta do A-ADS pode ter vários anúncios, cada um vinculado a um _site_. Então, outra opção pode ser criar um novo anúncio para o _site_ no novo endereço. Assim, dependendo de como está o _site_ nos dois endereços (antigo e novo), você pode ter anúncios nos dois endereços, monetizando ambos.

## Brave Rewards

Em programas de anúncios mais tradicionais, como o Google AdSense, o anunciante paga ao programa, que por sua vez paga aos _sites_ para exibir anúncios. O visitante do _site_ apenas visualiza os anúncios, sem receber por isso.

O [Brave Rewards][brave-rewards] é o programa do navegador [Brave] para remunerar [criadores de conteúdo][brave-creators] pela exibição de anúncios, mas também os usuários do navegador por visualizar anúncios. O usuário do Brave pode optar por receber anúncios e ser remunerado por anúncio visto. Ele recebe todo mês certa quantia de uma criptomoeda própria do navegador, o [BAT] (_Basic Attention Token_, "_token_ básico de atenção", em uma tradução livre), que pode depois ser convertida para reais, dólares, _bitcoins_ ou doada para criadores de conteúdo cadastrados no Brave Rewards. Essa doação pode ser automática (padrão), de modo que o navegador doa parte dos BATs do usuário para os _sites_ que ele mais acessa, e/ou espontânea, com o usuário informando quantos BATs quer doar para determinado _site_.

Que nem no AdSense e no A-ADS, é possível ter vários _sites_ associados à mesma conta do [Brave Rewards para criadores de conteúdo][brave-creators]. Não é possível mudar o endereço de um _site_ já associado, mas é fácil adicionar o novo endereço do _site_ como se fosse um novo _site_. O processo de validação é simples, não há análise do conteúdo, o programa apenas verifica se você de fato é o dono do _site_ por meio do _upload_ de um arquivo para o _site_.

{{< image src="/files/2021/04/mudanca-de-endereco-brave.jpg" >}}

## Redes sociais

Por último, mas não menos importante, eu não poderia deixar de lembrar: não se esqueça de atualizar o endereço do seu _site_ nos perfis nas redes sociais! (verifique inclusive as artes)

{{< image src="/files/2021/04/mudanca-de-endereco-facebook.jpg" >}}

{{< image src="/files/2021/04/mudanca-de-endereco-twitter-1.jpg" >}}

{{< image src="/files/2021/04/mudanca-de-endereco-twitter-2.jpg" >}}

## Referências dessa segunda parte

- [How to Migrate Disqus Comments after Changing URL Structure - Journey Bytes][journeybytes]
- [addthis preserving social sharing counters - Stack Overflow][stackoverflow]

[parte-1]: {{% ref "2021-03-24-o-que-fazer-depois-de-mudar-o-endereco-do-site-parte-1-visitantes-e-google" %}}

[disqus]: https://disqus.com/
[jekyll]: https://jekyllrb.com/
[gitlab-pages]: https://docs.gitlab.com/ee/user/project/pages/

[addthis-1]: https://www.addthis.com/
[addthis-2]: {{% ref "2015-08-29-addthis" %}}
[addthis-academy]: https://www.addthis.com/academy/how-counter-values-work/
[nrave]: https://nrave.com/2016/10/lost-addthis-social-share-button-counts-after-moving-to-https/
[social-warfare]: https://warfareplugins.com/

[a-ads]: https://a-ads.com/
[bitcoin]: https://linuxkamarada.com/pt/2018/12/12/bitcoin-para-iniciantes-com-a-carteira-electrum/

[brave-rewards]: https://brave.com/brave-rewards/
[brave]: https://brave.com/
[brave-creators]: https://creators.brave.com/
[bat]: https://basicattentiontoken.org/

[journeybytes]: https://www.journeybytes.com/migrate-disqus-comments-after-changing-url-structure/
[stackoverflow]: https://stackoverflow.com/a/37390629
