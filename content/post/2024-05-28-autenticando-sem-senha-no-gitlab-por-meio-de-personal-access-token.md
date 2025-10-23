---
date: "2024-05-28T11:40:00Z"
image: /files/2024/05/gitlab-personal-access-tokens.jpg
title: Autenticando sem senha no GitLab por meio de Personal Access Token
---

{% include image.html src="/files/2024/05/gitlab-personal-access-tokens.jpg" %}

Se você trabalha com [Git] e [GitLab], provavelmente já quis usá-lo sem senha, por um motivo ou por outro. Talvez porque é incômodo ter que digitar a senha toda vez que faz um **[git pull]** ou **[git push]**. Uma vez eu escrevi para o _blog_ do [Linux Kamarada] um tutorial contendo uma possível solução para isso, que é [usar o Git com chaves SSH][git-ssh]. Mas nem sempre essa é a melhor solução possível. Se você precisa acessar [registros de pacotes privados do PyPI][gitlab-docs-pypi] ou [registros de contêineres privados do Docker][gitlab-docs-docker] no GitLab, o melhor para isso é criar e usar um _[personal access token]_ (_token_ de acesso pessoal).&nbsp;

Um **_[personal access token]_** é semelhante a uma senha que você cria no GitLab e que lhe permite acessá-lo sem informar a senha da sua conta.

Se você tem algum _script_ ou automação que precisa acessar o GitLab como se fosse você, você deve criar um _personal access token_ para esse _script_ ou automação, em vez de anotar sua senha em algum arquivo de texto que vai ficar exposto por aí.

_Personal access tokens_ são obrigatórios para acessar repositórios do GitLab a partir do terminal (comandos **git pull**, **git push**, etc.) se você habilitou [autenticação de dois fatores][gitlab-docs-2fa] (_two-factor authentication_, 2FA) para a sua conta ou se você acessa o GitLab de uma organização por meio de [_single sign-on_ (SSO)][gitlab-docs-sso].

Veja a seguir como criar e usar um _personal access token_.

## Criando um personal access token

Usando seu navegador preferido, acesse sua conta do [GitLab]. Na barra lateral à esquerda, clique no seu avatar e, depois, em **Preferences** (preferências):

{% include image.html src="/files/2024/05/gitlab-personal-access-token-1.jpg" %}

Na barra lateral à esquerda, clique em **Access Tokens**. Depois, na página, à direita, clique em **Add new token** (adicionar novo _token_):

{% include image.html src="/files/2024/05/gitlab-personal-access-token-2.jpg" %}

Digite um nome para o _token_ (**Token name**) e defina uma data de expiração (**Expiration date**) para o _token_, que não deve ser superior a 1 ano (por exemplo, se hoje estamos em `2024-05-27`, você pode digitar `2025-05-26` para que o _token_ tenha validade de 1 ano):

{% include image.html src="/files/2024/05/gitlab-personal-access-token-3.jpg" %}

Em **Select scopes** (selecione escopos), defina quais ações poderão ser feitas usando esse _token_. Na dúvida, marque apenas a opção **api**, mas tenha em mente que esse é o nível de permissão máximo. Se quiser mais informações sobre cada uma dessas opções, consulte a [documentação do GitLab][gitlab-docs-scopes].

Mais abaixo, nessa mesma página, clique no botão **Create personal access token** (criar _token_ de acesso pessoal).

A página seguinte informa que o _token_ foi criado:

{% include image.html src="/files/2024/05/gitlab-personal-access-token-4.jpg" %}

Você pode vê-lo clicando no ícone do olho e copiá-lo usando o ícone do lado. Não deixe essa página sem ter copiado esse _token_ para algum outro lugar, pois não terá como vê-lo novamente. Se for preciso, você terá que criar outro _token_.

## Configurando a autenticação no Linux

Eu criei um _personal access token_ para mim com o intuito de fazer **git pull**, **git push**, etc. dos repositórios sem ter que informar _login_ e senha toda vez.

Para conseguir isso, se você usa [Linux], como eu, deve adicionar seu _personal access token_ ao arquivo **[netrc]**, que é um arquivo de configuração do Linux que nos permite configurar autenticação automática em servidores de Git, [FTP], etc.

Usando seu editor de texto favorito (como o **[vim]**), crie (ou edite, caso já exista) o arquivo `.netrc` na sua pasta pessoal (portanto, `~/.netrc`):

```
$ vim ~/.netrc
```

E adicione a seguinte linha:

```
machine <endereco-do-gitlab> login <nome-do-token> password <token>
```

No meu exemplo, ficou assim:

```
machine gitlab.com login my-token password glpat-j-_QJyC8MwzcFHsSfUUu
```

Salve o arquivo e saia do editor de texto.

Você deve ser o único usuário a ter permissão para ler e escrever no arquivo `.netrc`. Certifique-se de que esse é o caso ajustando suas permissões:

```
$ chmod 600 ~/.netrc
```

Pronto! Feito isso, você já pode testar seu _personal access token_ fazendo um **git pull** e percebendo que o Git não pede mais senha.

## Referências

- [Personal access tokens \| GitLab][personal access token]
- [git - Using GitLab token to clone without authentication - Stack Overflow][stackoverflow]
- [.netrc file so you can push/pull to https git repos without entering your creds all the time · GitHub][github]
- [Document ~/.netrc usage (#350582) · Issues · GitLab][gitlab-issues]

[Git]:                      https://git-scm.com/
[GitLab]:                   https://gitlab.com/
[git pull]:                 https://git-scm.com/docs/git-pull/pt_BR
[git push]:                 https://git-scm.com/docs/git-push/pt_BR
[Linux Kamarada]:           https://linuxkamarada.com/
[git-ssh]:                  https://linuxkamarada.com/pt/2017/04/09/usando-chaves-ssh-com-o-git/
[gitlab-docs-pypi]:         https://docs.gitlab.com/ee/user/packages/pypi_repository/index.html#authenticate-with-the-package-registry
[gitlab-docs-docker]:       https://docs.gitlab.com/ee/user/packages/container_registry/index.html#authenticate-with-the-container-registry
[personal access token]:    https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html
[gitlab-docs-2fa]:          https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html
[gitlab-docs-sso]:          https://docs.gitlab.com/ee/integration/saml.html#password-generation-for-users-created-through-saml
[gitlab-docs-scopes]:       https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes
[Linux]:                    https://www.vivaolinux.com.br/linux/
[netrc]:                    https://linux.die.net/man/5/netrc
[FTP]:                      https://pt.wikipedia.org/wiki/Protocolo_de_Transfer%C3%AAncia_de_Arquivos
[vim]:                      https://www.vim.org/
[stackoverflow]:            https://stackoverflow.com/a/56634287/1657502
[github]:                   https://gist.github.com/technoweenie/1072829?permalink_comment_id=4059207#gistcomment-4059207
[gitlab-issues]:            https://gitlab.com/gitlab-org/gitlab/-/issues/350582
