---
date: "2021-08-31T23:59:00Z"
image: /files/2021/08/protonmail.jpg
title: 'ProtonMail: e-mail com privacidade e domínio personalizado'
translationKey: protonmail
---

{{< image src="/files/2021/08/protonmail.jpg" >}}

O [ProtonMail] é um serviço de _e-mail_ com foco em privacidade, criptografia, segurança e facilidade de uso. É oferecido pela empresa Proton Technologies AG, sediada em Genebra, na Suíça. O que o torna especial, diferente dos demais, para ser indicado por _sites_ como [Privacidade.Digital] e [Security-in-a-Box]? Seu foco em privacidade. Seus criadores o idealizaram após as revelações de Edward Snowden sobre a NSA e ele foi lançado em [2014]. Além de contar com recursos como criptografia de ponta a ponta e autenticação dupla, o ProtonMail está na Suíça, país conhecido por suas fortes leis de privacidade.

[ProtonMail]: https://protonmail.com/
[Privacidade.Digital]: https://www.privacidade.digital/provedores/email/
[Security-in-a-Box]: https://securityinabox.org/pt/guide/secure-communication/
[2014]: https://www.tecmundo.com.br/seguranca/54801-protonmail-email-criptografado-rastreamento-nsa-lancado.htm

O ProtonMail pode ser usado de graça. Nesse caso, ele oferece uma caixa de entrada de até 500MB para que você possa experimentar o serviço. [Planos pagos][protonmail-support-1] também estão disponíveis com mais capacidade (começando com 5GB) e mais recursos. É possível contratá-los usando cartão de crédito ou [Bitcoin][protonmail-support-2]. O ProtonMail se sustenta das vendas dos planos e, por isso, não precisa bisbilhotar os _e-mails_ dos usuários a fim de direcionar-lhes propaganda -- como [o Gmail faz][bisbilhotando].

[bisbilhotando]: https://proton.me/blog/google-privacy-problem

E se eu te disser que um dos recursos extras do ProtonMail pago é a possibilidade de configurar um [domínio personalizado][protonmail-support-3] para o seu _e-mail_? (como `contato@meusite.com`) Já pensou unir o útil ao agradável? Armazenar suas mensagens em um provedor de _e-mail_ seguro e poder ser contatado por um endereço com ar de profissional.

Foi o que eu fiz para mim e venho aqui hoje compartilhar um tutorial mostrando como você pode fazer também.

Lembrando que eu [registrei meu domínio][mudança] pela [Namecheap], então vou usar esse registrar como exemplo. Mas o que eu vou mostrar você deve ser igualmente capaz de fazer -- talvez um pouco diferente, claro -- se usa outro registrar ou seus próprios servidores de DNS.

[mudança]: {{% ref "2021-03-24-o-que-fazer-depois-de-mudar-o-endereco-do-site-parte-1-visitantes-e-google" %}}
[Namecheap]: https://bit.ly/kamarada-namecheap

## Assinando o ProtonMail

Para esse tutorial, vou assumir que você já possui uma conta no ProtonMail e já fez o _[upgrade]_ para um plano pago. Qualquer um dos planos dá direito a pelo menos um domínio personalizado. Caso queira, você pode contratar mais de um domínio personalizado no momento no _upgrade_, ou mesmo depois.

## Configurando o domínio

Comece fazendo _login_ no [ProtonMail]. Em seguida, acesse as configurações:

{{< image src="/files/2021/08/pm01.jpg" >}}

No menu à esquerda, clique em **Nomes de domínio**. Depois, à direita, clique em **Adicionar domínio**:

{{< image src="/files/2021/08/pm02.jpg" >}}

Informe o **Nome do domínio** (no meu exemplo, `antoniomedeiros.dev`) e clique em **Próximo**:

{{< image src="/files/2021/08/pm03.jpg" >}}

A tela seguinte apresenta uma entrada que você deve adicionar à configuração de DNS do seu domínio para que o ProtonMail possa verificar que de fato ele te pertence:

{{< image src="/files/2021/08/pm04.jpg" >}}

Copie o valor dessa entrada e adicione-a à configuração de DNS do seu domínio.

Como exemplo, mostrarei como fazer essa configuração na [Namecheap], já que registrei meu domínio por essa empresa.

Comece fazendo _login_ na [Namecheap]. Depois vá em **Account** (conta) > **Dashboard** (painel de controle) > **Domain List** (lista de domínios). Na linha referente ao domínio que você quer configurar, clique em **Manage** (gerenciar):

{{< image src="/files/2021/08/pm05.jpg" >}}

Na tela seguinte, abra a guia **Advanced DNS** (DNS avançado), clique em **Add New Record** (adicionar novo registro) e adicione a entrada de DNS fornecida pelo ProtonMail:

{{< image src="/files/2021/08/pm06.jpg" >}}

Feito o ajuste na configuração de DNS, de volta ao ProtonMail, clique em **Próximo**.

É bem provável que o ProtonMail apresente uma mensagem de erro, porque demora um tempo até a nova configuração de DNS ser propagada em todo o mundo:

{{< image src="/files/2021/08/pm07.jpg" >}}

Você pode acompanhar a propagação -- que pode demorar alguns minutos, horas ou até mesmo dias -- com o auxílio de alguma ferramenta como o [whatsmydns.net](https://www.whatsmydns.net/):

{{< image src="/files/2021/08/pm08.jpg" >}}

No meu caso, tive a impressão que a propagação podia estar demorando mais que o normal. Então, entrei em contato com o suporte da Namecheap -- mais um motivo porque os indico, o suporte nunca me deixou na mão -- e eles sugeriram fazer um ajuste na minha configuração: mudar a entrada de CNAME para ALIAS. Isso não é relacionado ao ProtonMail, mas pensei que poderia ser útil compartilhar:

{{< image src="/files/2021/08/pm09.jpg" >}}

Aí foi que a nova configuração de DNS começou a propagar para o mundo:

{{< image src="/files/2021/08/pm10.jpg" >}}

Quando servidores de DNS da Suíça (em inglês, _Switzerland_) já conheciam a configuração nova, consegui avançar no ProtonMail. Note que o assistente vai marcando as etapas conforme verifica que deram certo:

{{< image src="/files/2021/08/pm11.jpg" >}}

Agora vem a configuração das entradas MX, as mais importantes para os _e-mails_.

Na Namecheap, elas podem ser adicionadas naquela mesma tela, mais abaixo:

{{< image src="/files/2021/08/pm12.jpg" >}}

Repita isso para as próximas etapas da configuração: avançar no assistente do ProtonMail, copiar as entradas DNS, adicioná-las à configuração do domínio e aguardar a propagação.

A seguir, mostro as telas do assistente apenas para que você tenha uma ideia do que encontrará pela frente:

{{< image src="/files/2021/08/pm13.jpg" >}}
{{< image src="/files/2021/08/pm14.jpg" >}}
{{< image src="/files/2021/08/pm15.jpg" >}}

Ao final, quando terminar de configurar o domínio, clique em **Adicionar Endereço**:

{{< image src="/files/2021/08/pm16.jpg" >}}

Para referência, eis como ficou a minha configuração de DNS no final:

{{< image src="/files/2021/08/pm17.jpg" >}}
{{< image src="/files/2021/08/pm18.jpg" >}}

(lembrando que nem todas essas entradas são relacionadas ao ProtonMail, algumas são referentes ao [GitLab Pages], [onde hospedo meus _sites_][onde-hospedo])

[GitLab Pages]: https://docs.gitlab.com/user/project/pages/
[onde-hospedo]: {{% ref "2021-03-24-o-que-fazer-depois-de-mudar-o-endereco-do-site-parte-1-visitantes-e-google" %}}

## Configurando o endereço

Na tela **Usuários e endereços**, clique em **Adicionar endereço**:

{{< image src="/files/2021/08/pm19.jpg" >}}

Defina o **Endereço** (por exemplo, `contato@antoniomedeiros.dev`) e um **Nome de exibição** (como `Antônio Medeiros`) e clique em **Salvar endereço**:

{{< image src="/files/2021/08/pm20.jpg" >}}

Selecione um algoritmo (de **Alta segurança**, **Segurança máxima** ou **Última geração**) para gerar as chaves de criptografia para o seu novo endereço de _e-mail_:

{{< image src="/files/2021/08/pm21.jpg" >}}

Tenha em mente que as chaves são geradas no seu computador, e que esse processo pode travar o navegador (embora não tenha acontecido comigo), por isso não faça isso em um _tablet_ ou _smartphone_, mas em um _desktop_.

Clique em **Enviar**. Quando o a geração de chaves terminar, clique em **Concluído**.

Feito isso, seu novo endereço de _e-mail_ estará pronto para uso:

{{< image src="/files/2021/08/pm22.jpg" >}}

## Testando o e-mail personalizado

Você já pode testar o _e-mail_ personalizado com o seu domínio.

Se você possui alguma outra conta de _e-mail_ (no [Gmail], por exemplo), pode testar enviar um _e-mail_ para o seu novo endereço e recebê-lo no ProtonMail:

[Gmail]: https://gmail.com/

{{< image src="/files/2021/08/pm23.jpg" >}}

Note que você também pode fazer _login_ no ProtonMail com o endereço de _e-mail_ do seu domínio:

{{< image src="/files/2021/08/pm24.jpg" >}}

## Referências

Se precisar de mais informações, você pode consultar as mesmas páginas que eu consultei para aprender a fazer esse procedimento:

- [ProtonMail Plans Explained (Free, Paid, Professional, Visionary) - ProtonMail Support][protonmail-support-1]

- [How to upgrade or downgrade your subscription - ProtonMail Support][upgrade]

- [Paying for ProtonMail with Bitcoin - ProtonMail Support][protonmail-support-2]

- [What are custom domains? - ProtonMail Support][protonmail-support-3]

- [How to connect a custom domain? - ProtonMail Support][protonmail-support-4]

- [Verify your custom domain and set MX record - ProtonMail Support][protonmail-support-5]

Ou pode deixar sua dúvida nos comentários.

Espero que esse tutorial tenha te ajudado. Até o próximo!

[protonmail-support-1]: https://protonmail.com/support/knowledge-base/paid-plans/
[upgrade]: https://protonmail.com/support/knowledge-base/upgrade-downgrade/
[protonmail-support-2]: https://protonmail.com/support/knowledge-base/paying-with-bitcoin/
[protonmail-support-3]: https://protonmail.com/support/knowledge-base/custom-domains/
[protonmail-support-4]: https://protonmail.com/support/knowledge-base/set-up-a-custom-domain/
[protonmail-support-5]: https://protonmail.com/support/knowledge-base/dns-records/
