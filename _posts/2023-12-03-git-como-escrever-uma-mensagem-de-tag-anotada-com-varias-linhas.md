---
date: 2023-12-03 12:50:00 GMT-3
image: '/files/2023/12/multiline-git-tag-messages.jpg'
layout: post
published: true
title: 'Git: como escrever uma mensagem de tag anotada com várias linhas'
excerpt: 'Sempre que lanço uma nova versão de um projeto cujo código-fonte é controlado pelo Git, costumo criar uma tag anotada para marcar o commit daquela versão, e geralmente essa tag contém uma mensagem curta de apenas uma linha. Veja, por exemplo, as tags do projeto material-jekyll, que é o modelo que eu uso para fazer este site e o site do Linux Kamarada'
---

**[TL;DR] (resumo):** use o comando `git tag -a v3.0.0` (sem a opção `-m`)

[TL;DR]: https://www.significados.com.br/tl-e-dr/

**Versão completa:**

Sempre que lanço uma nova versão de um projeto cujo código-fonte é controlado pelo [Git], costumo [criar uma _tag_ anotada][git-book] para marcar o _commit_ daquela versão, e geralmente essa _tag_ contém uma mensagem curta de apenas uma linha. Veja, por exemplo, as [_tags_ do projeto **material-jekyll**][material-jekyll], que é o modelo que eu uso para fazer este _site_ e o _site_ do [Linux Kamarada]:

[Git]: https://git-scm.com/
[git-book]: https://git-scm.com/book/pt-br/v2/Fundamentos-de-Git-Criando-Tags
[material-jekyll]: https://gitlab.com/antoniomedeiros/material-jekyll/-/tags
[Linux Kamarada]: https://linuxkamarada.com/

{% include image.html src="/files/2023/12/material-jekyll-tags-before.png" %}

Mas, para o lançamento da versão 3.0, eu queria escrever uma mensagem mais longa, em algumas linhas, que resumisse as principais alterações e explicasse o porquê do [incremento da versão maior][semver].

[semver]: https://semver.org/lang/pt-BR/

Todos os exemplos da [documentação do Git][git-book] usam a opção `-m`, que define a mensagem da _tag_, mas em todos esses exemplos a mensagem é curta.

Por exemplo, para criar uma _tag_ anotada:

```
$ git tag -a v3.0.0 -m "Version 3.0.0"
```

Para criar uma _tag_ leve:

```
$ git tag v3.0.0
```

Eis que me veio a pergunta que dá o título deste _post_. Como bom programador que sou, fiz uma pesquisa no Google e achei alguém com a mesma dúvida no [Stack Overflow]. Mas, depois, voltando na [documentação do Git][git-book] e lendo-a mais atentamente, percebi que a solução também era dita lá, só não tinha um exemplo:

[Stack Overflow]: https://stackoverflow.com/a/59551505/1657502

> Se você não especificar uma mensagem para uma tag anotada, o Git abre seu editor para que você possa digitar nele.

Portanto, o que fiz foi simplesmente:

```
$ git tag -a v3.0.0
```

(mesmo comando que antes, mas sem a opção `-m`)

Com esse comando, o Git abriu meu editor de texto (o padrão do [Linux], o [Vim]) e pude digitar minha mensagem com várias linhas:

[Linux]: https://www.vivaolinux.com.br/linux/
[Vim]: https://www.vim.org/

{% include image.html src="/files/2023/12/multiline-git-tag-messages.jpg" %}

Depois, enviei essa _tag_ para o servidor remoto:

```
$ git push origin v3.0.0
```

E agora você pode vê-la listada nas [_tags_ do projeto **material-jekyll**][material-jekyll]:

{% include image.html src="/files/2023/12/material-jekyll-tags-after.png" %}
