---
date: "2025-05-15T22:20:00Z"
image: /files/2025/05/zoho-mail-dominio.jpg
title: E-mail profissional gratuito com domínio personalizado usando Zoho Mail
---

{% include image.html src='/files/2025/05/zoho-mail-dominio.jpg' %}

Se você é autônomo ou tem um negócio próprio, mesmo que pequeno, ter um _e-mail_ personalizado com domínio próprio (como `seunome@suaempresa.com.br`) traz diversas vantagens. A principal delas é que transmite uma imagem mais profissional do que um _e-mail_ gratuito como `@gmail.com` ou `@hotmail.com`, comumente usados para comunicações pessoais. Também ajuda com a consistência da sua marca, mantendo sua presença digital coerente (redes sociais, _site_, _e-mail_ com o mesmo nome/dominio). Além de gerar confiança: clientes, parceiros e empregadores costumam confiar mais em _e-mails_ com domínio próprio, pois parecem mais autênticos e menos amadores.

Um **domínio** é o nome que identifica um _site_ na internet, como por exemplo `suaempresa.com.br`. Ele funciona como um "endereço" que as pessoas digitam no navegador para acessar um _site_, mais fácil de lembrar do que um número de IP, que é internamente usado pelos computadores para se comunicarem entre si. Por exemplo, `google.com` é mais fácil de lembrar do que `172.217.29.46`. Um domínio também permite criar _e-mails_ personalizados.

Para usar um domínio, você precisa registrá-lo e renová-lo anualmente, como um aluguel. O custo é baixo, geralmente entre R$ 40 e R$ 80 por ano. Tanto o registro quanto a renovação podem ser feitos pelo [Registro.br], que é o órgão do governo responsável pelos domínios com final `.br`, ou por empresas registradoras (_registrars_) e de hospedagem, que além de registrar o domínio também oferecem serviços integrados como _e-mail_ e _site_. Exemplos populares no Brasil incluem [HostGator] e [Locaweb]. Se você quiser um domínio internacional (terminado em `.com`, `.net`, `.org`, etc, sem `.br`) ou um domínio criativo (como `.tech`, `.dev`, etc), pode consultar empresas como [Namecheap], [GoDaddy] e [Cloudflare].

De posse do domínio, para criar seu _e-mail_ você pode levantar um servidor de _e-mails_ por conta própria ou contratar uma empresa para te fornecer esse serviço. [Opções][tecnoblog] incluem grandes conhecidas como [Google] ou [Microsoft], já falei aqui também do [ProtonMail], mas essas cobram pelo _e-mail_ com domínio personalizado. Tem uma empresa que oferece uma opção gratuita, ideal para quem está começando, que é o [Zoho Mail]. Seu plano gratuito permite a criação de até 5 contas para o seu domínio com até 5GB de caixa de entrada cada.

Recentemente [registrei][whois] o domínio `renatamonte.com.br` no Registro.br para a [advogada Renata Monte][renatamonte] e criei para ela, usando o Zoho Mail, o _e-mail_ personalizado `advogada@renatamonte.com.br`. Tomei notas, capturei telas e neste tutorial vou te mostrar como você pode fazer o mesmo para você e seu negócio.

Este tutorial é baseado em grande parte no excelente tutorial em vídeo do [Renato Faria - Negócio Digital Produtivo][youtube]. Se você gosta mais de vídeos, talvez prefira seguir o tutorial dele. Mas se você, assim como eu, prefere textos, siga aqui comigo.

Você pode seguir este tutorial mesmo que tenha registrado o domínio em outro lugar que não o Registro.br. Nesse caso, o que pode mudar é a configuração do DNS no seu _registrar_, mas a configuração do Zoho Mail permanece igual. 

## DNS avançado no Registro.br

Acesse sua conta no [Registro.br] e, no **Painel**, clique no domínio:

{% include image.html src='/files/2025/05/zoho-mail-dominio-01.jpg' %}

Na seção **DNS**, clique em **Configurar endereçamento**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-02.jpg' %}

A configuração de DNS do Registro.br por padrão é simplificada, tornando mais fácil configurar o DNS:

{% include image.html src='/files/2025/05/zoho-mail-dominio-03.jpg' %}

Essas opções provavelmente são suficientes para muitas pessoas, mas aqui precisaremos fazer mais configurações. Clique em **Modo avançado**.

Leia o alerta apresentado e clique em **Confirmar**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-04.jpg' %}

Agora, conforme alertado, aguarde o prazo para a alteração ser feita. Note que essa tela dá uma previsão mais exata, em horas, minutos e segundos:

{% include image.html src='/files/2025/05/zoho-mail-dominio-05.jpg' %}

Note também que o _link_ **Configurar zona DNS** está desabilitado (não é possível clicar nele).

Enquanto aguarda, comece o cadastro no Zoho Mail.

## Cadastro no Zoho Mail

Acesse a página do [Zoho Mail] e clique no _link_ **Preços**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-06.jpg' %}

Em **Plano gratuito vitalício**, clique em **Inscreva-se já**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-07.jpg' %}

Na tela seguinte, digite seu **Nome**, um **Endereço de e-mail** para contato e uma **Senha** para a conta que está criando e clique em **Inscrever-se**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-08.jpg' %}

O Zoho Mail apresenta um assistente para configurar o domínio:

{% include image.html src='/files/2025/05/zoho-mail-dominio-09.jpg' %}

Como já temos um domínio registrado, clique em **Adicionar agora**.

Forneça as informações solicitadas (domínio, nome da organização e setor) e clique em **Adicionar agora**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-10.jpg' %}

Na tela seguinte, clique em **Prosseguir para a verificação do domínio**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-11.jpg' %}

## Verificação do domínio

Antes de configurar propriamente as entradas DNS para envio e recebimento de _e-mails_, o Zoho Mail pede que adicionemos uma entrada DNS apenas para verificar que nosso domínio é realmente nosso.

A tela seguinte apresenta a entrada TXT que precisa ser adicionada no servidor DNS:

{% include image.html src='/files/2025/05/zoho-mail-dominio-12.jpg' %}

Clique no ícone para copiar o **Valor/conteúdo do TXT**.

Passado o prazo de 2 horas, volte ao Registro.br e clique em **Configurar zona DNS**. Clique em **Nova entrada**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-13.jpg' %}

Em **Tipo**, selecione **TXT**:

{% include image.html src='/files/2025/05/zoho-mail-dominio-14.jpg' %}

Deixe o campo **Nome** vazio.

No campo seguinte, cole o valor copiado anteriormente.

Por fim, clique em **Adicionar** e, depois, em **Salvar alterações**.

Essa alteração na configuração do domínio precisa ser propagada para servidores DNS no mundo todo, o que pode levar desde alguns minutos a algumas horas, ou até mesmo dias. Você pode acompanhar a propagação com o auxílio de alguma ferramenta como o [whatsmydns.net]:

{% include image.html src='/files/2025/05/zoho-mail-dominio-15.jpg' %}

Quando a propagação estiver concluída (ou, pelo menos, bem adiantada), volte ao Zoho Mail e clique em **Verificar registro TXT**.

Se o Zoho Mail conseguiu obter a entrada TXT do servidor DNS, ele informa na tela seguinte que a propriedade do domínio foi verificada:

{% include image.html src='/files/2025/05/zoho-mail-dominio-16.jpg' %}

Defina o endereço de _e-mail_ da primeira e mais importante conta do domínio, a conta do administrador. Pode ser algo como `contato@antoniomedeiros.dev`, `advogada@renatamonte.com.br` ou `admin@seudominio.com`.

Note que o plano gratuito do Zoho Mail te dá direito a até 5 usuários, então você pode criar mais endereços depois, se quiser.

Quando terminar, clique em **Criar**.

As duas telas seguintes do assistente não tem relação com a configuração do domínio, em ambas você pode prosseguir para a tela seguinte:

{% include image.html src='/files/2025/05/zoho-mail-dominio-17.jpg' %}

{% include image.html src='/files/2025/05/zoho-mail-dominio-18.jpg' %}

## Configurando o e-mail no DNS

A tela seguinte traz mais configurações para fazermos no DNS:

{% include image.html src='/files/2025/05/zoho-mail-dominio-19.jpg' %}

Essas entradas, sim, são responsáveis pelo envio e recebimento de _e-mails_ propriamente. Replique-as no Registro.br e salve as alterações:

{% include image.html src='/files/2025/05/zoho-mail-dominio-20.jpg' %}

Novamente, aguarde a propagação dessas alterações. Quando terminar, volte ao assistente de configuração do Zoho Mail e clique no botão **Verificar todos os registros**.

Se tudo deu certo, o assistente mostra uma mensagem de sucesso:

{% include image.html src='/files/2025/05/zoho-mail-dominio-21.jpg' %}

Novamente, você pode avançar para as telas seguintes. Essas últimas telas do assistente não tem relação com a configuração do domínio.

{% include image.html src='/files/2025/05/zoho-mail-dominio-22.jpg' %}

{% include image.html src='/files/2025/05/zoho-mail-dominio-23.jpg' %}

{% include image.html src='/files/2025/05/zoho-mail-dominio-24.jpg' %}

Configuração concluída, clique em **Verifique sua caixa de entrada**.

Eis a caixa de entrada do Zoho Mail:

{% include image.html src='/files/2025/05/zoho-mail-dominio-25.jpg' %}

## Testando envio e recebimento de e-mails

Se deu tudo certo, já temos um _e-mail_ profissional funcionando, capaz de enviar e receber _e-mails_. Vamos testá-lo.

Clique em **Novo e-mail**, redija e envie uma mensagem para outro endereço de _e-mail_ (seu _e-mail_ pessoal, por exemplo):

{% include image.html src='/files/2025/05/zoho-mail-dominio-26.jpg' %}

Verifique que o _e-mail_ foi recebido do outro lado e o responda:

{% include image.html src='/files/2025/05/zoho-mail-dominio-27.jpg' %}

Verifique no seu _e-mail_ profissional que a resposta foi recebida:

{% include image.html src='/files/2025/05/zoho-mail-dominio-28.jpg' %}

## Conclusão

Se no teste você conseguiu enviar e também receber um _e-mail_, então seu _e-mail_ personalizado com domínio próprio está pronto. Faça bom uso!

Pensei em configurar um endereço personalizado para acessar o _e-mail_, como `mail.renatamonte.com.br`, mas essa é uma funcionalidade do Zoho Mail [exclusiva para planos pagos][custom-login]. Para facilitar seu acesso, recomendo que você favorite [o endereço do Zoho Mail][Zoho Mail].

Espero que esse tutorial tenha sido útil para você. Se ficou com alguma dúvida, me escreva nos comentários. Abraço e até a próxima!

[Registro.br]:      https://registro.br
[HostGator]:        https://www.hostgator.com.br
[Locaweb]:          https://www.locaweb.com.br
[Namecheap]:        https://bit.ly/kamarada-namecheap
[GoDaddy]:          https://www.godaddy.com/pt-br
[Cloudflare]:       https://www.cloudflare.com/pt-br
[tecnoblog]:        https://tecnoblog.net/guias/6-opcoes-para-criar-um-e-mail-com-dominio-proprio/
[Google]:           https://workspace.google.com/intl/pt-BR/lp/gmail/
[Microsoft]:        https://learn.microsoft.com/pt-br/microsoft-365/admin/email/change-email-address?view=o365-worldwide
[ProtonMail]:       {% post_url 2021-08-31-protonmail-e-mail-com-privacidade-e-dominio-personalizado %}
[Zoho Mail]:        https://www.zoho.com/pt-br/mail/
[whois]:            https://registro.br/tecnologia/ferramentas/whois?search=renatamonte.com.br
[renatamonte]:      https://www.instagram.com/renatamonte.adv/
[youtube]:          https://www.youtube.com/watch?v=4PW0Fir3RR4
[whatsmydns.net]:   https://www.whatsmydns.net/
[custom-login]:     https://www.zoho.com/mail/help/adminconsole/custom-login.html
