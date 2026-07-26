---
date: '2026-07-26T14:00:00'
image: /files/2026/07/claude-code-pt.jpg
title: 'Shell script para comparar duas pastas e detectar arquivos duplicados: experimentando o Claude Code'
translationKey: claude-code
---

{{< image src="/files/2026/07/claude-code-pt.jpg" >}}

Tenho experimentado com inteligência artificial e recentemente comecei a mexer com o [Claude Code]. Para quem está começando, como eu, indico um vídeo excelente no YouTube do canal [Hashtag Programação] assim como o guia [Claude How To], que é um repositório no GitHub com vários exemplos de como extrair o melhor do Claude Code.

{{< youtube yDO21vewdes >}}

O **Claude Code** é uma ferramenta de codificação agêntica da [Anthropic] que roda diretamente no terminal, mas também está disponível na forma de extensões para diversos IDEs (inclusive uma [extensão] para o [VS Code]), _app_ desktop e navegador. O Claude Code lê e entende toda a base de código para executar tarefas de forma autônoma, como implementar novas funcionalidades, corrigir _bugs_, refatorar, explicar trechos complexos, editar arquivos, executar comandos e até lidar com fluxos de trabalho do Git. Tudo isso o usuário pode pedir por meio de comandos em linguagem natural. Assim, o Claude Code funciona como um assistente de desenvolvimento que age diretamente sobre o projeto em vez de apenas sugerir código.

Devo observar que, diferente do [GitHub Copilot] que tem um plano gratuito, o Claude Code não tem plano gratuito nem "30 dias grátis para testar". Até para experimentar o Claude Code você já precisa assinar um [plano]. O mais barato, o plano Pro, pode ser contratado por 20 dólares por mês (algo como 110 reais, na cotação atual). Felizmente, para muitos, esse valor deve caber no orçamento. Depois, se decidir que vai continuar usando o Claude Code, é possível mudar para o pagamento anual com desconto.

Dito isso, quero compartilhar um uso que fiz do Claude Code para criar para mim um _script_ simples para resolver um problema do dia-a-dia.

**O problema a ser resolvido:** tenho duas pastas com arquivos duplicados, mas também com arquivos que só existem em uma ou na outra. Quero separar os arquivos que estão duplicados dos que só existem em uma pasta ou na outra para facilitar a organização que farei depois dessas pastas.

Para ilustrar a situação, criei duas pastas e coloquei algumas fotos nelas, como nas imagens a seguir.

<style>
/* https://www.google.com/search?q=responsive+two+columns+without+bootstrap */

/* Apply border-box globally to handle padding safely */
* {
  box-sizing: border-box;
}

/* Parent container sets up the flex layout */
.flex-container {
  display: flex;
  flex-wrap: wrap; /* Allows wrapping on small screens */
  gap: 20px;       /* Adds spacing between columns without margins */
}

/* Flex children default to equal split on larger viewports */
.flex-column {
  flex: 1;         
  min-width: 250px; /* Forces stack once viewport drops below this width */
  padding: 20px;
}
</style>

<div class="flex-container">
  <div class="flex-column">
    {{< image src="/files/2026/07/claude-01-pt.png" >}}
  </div>
  <div class="flex-column">
    {{< image src="/files/2026/07/claude-02-pt.png" >}}
  </div>
</div>

Perceba que:

- `foto1.jpg` e `foto2.jpg` são os mesmos arquivos (duplicados) na `pasta1` e na `pasta2`;
- `foto3.jpg` e `foto5.jpg` só existem na `pasta1`;
- `foto4.jpg` e `foto6.jpg` só existem na `pasta2`; e
- `foto7.jpg` e `foto8.jpg` existem em ambas as pastas, mas estão na vertical na `pasta1` e na horizontal na `pasta2`, logo, são arquivos diferentes.

Depois de criar uma conta no [Claude], assinar o [plano], instalar a [extensão] no VS Code e entrar com minha conta na extensão, detalhei para o Claude Code o _script_ que eu queria:

> Tenho duas pastas A e B com arquivos duplicados, mas pode haver arquivos que só existam em A, assim como arquivos que só existam em B. Escreva um shell script que receba os caminhos de A e B como argumentos. Para cada arquivo X em A (portanto, caminho A/X), verifique a existência de um arquivo B/X (com o mesmo nome X na pasta B). Se for encontrado, compare as somas de verificação de A/X e B/X. Se forem iguais, mova A/X para A/duplicados/X (crie a pasta A/duplicados caso não exista) e B/X para B/duplicados/X (da mesma forma, crie a pasta B/duplicados caso não exista). Se não forem iguais, mova A/X para A/unicos/X e B/X para B/unicos/X. Se não for encontrado um arquivo B/X, mova A/X para A/unicos/X. Ao final, se restarem arquivos em B que não estejam nas pastas B/duplicados nem B/unicos, mova-os para a pasta B/unicos. Quando o script estiver pronto, teste-o com as pastas pasta1 e pasta2 na pasta atual.

{{< image src="/files/2026/07/claude-03-pt.jpg" >}}

Depois de "pensar" por um tempo e escrever o _script_, o Claude Code me pediu permissão para executar alguns comandos no meu computador, a fim de tornar o _script_ executável e executá-lo:

{{< image src="/files/2026/07/claude-04-pt.jpg" >}}

Ao final, ele avisou que o teste do _script_ foi bem sucedido:

{{< image src="/files/2026/07/claude-05-pt.jpg" >}}

Eis o _script_ que ele gerou (compartilho na íntegra no final):

{{< image src="/files/2026/07/claude-06-pt.jpg" >}}

Depois de rodar o _script_, as pastas ficaram assim:

<div class="flex-container">
  <div class="flex-column">
    {{< image src="/files/2026/07/claude-07-pt.png" >}}
  </div>
  <div class="flex-column">
    {{< image src="/files/2026/07/claude-08-pt.png" >}}
  </div>
</div>

Perceba que:

- `foto1.jpg` e `foto2.jpg` foram movidas para uma pasta chamada `duplicados` criada tanto na `pasta1` quanto na `pasta2`;
- `foto3.jpg` e `foto5.jpg` foram movidas para uma `unicos` criada na `pasta1`;
- `foto4.jpg` e `foto6.jpg` foram movidas para uma pasta `unicos` criada na `pasta2`; e
- `foto7.jpg` e `foto8.jpg` foram movidas para a pasta `unicos` tanto na `pasta1` quanto na `pasta2`;

Ou seja, realmente, o _script_ funcionou exatamente como eu queria que ele funcionasse.

Uma vez que ele passou no teste com essas pequenas pastas com poucos arquivos selecionados, usei ele para o que de fato eu queria:

{{< image src="/files/2026/07/claude-09-pt.jpg" >}}

Depois de tudo, excluí uma das pastas com arquivos duplicados e juntei todos os arquivos em uma pasta só, que terminou com aproximadamente 2.800 arquivos (entre fotos e vídeos) totalizando aproximadamente 23 GB. Um baita teste "em produção"!

E é claro que o Claude Code pode ser usado para muito mais do que escrever simples _scripts_. Muito tenho ouvido falar de _[vibe coding]_ e estou experimentando isso também com um projeto maior. Eu gostava de jogar o jogo **Copas** do Windows 98 (quer "reviver" esse sistema, jogar esse jogo e ter um momento de nostalgia hoje mesmo? Veja [esse tutorial][Windows 98]) e havia um jogo semelhante no Linux que era o [GNOME Hearts], só que ele não recebe atualizações há mais de uma década, e rodá-lo em sistemas atuais não é impossível, mas também não é tão simples. Auxiliado pelo Claude Code, estou reescrevendo esse jogo com linguagem de programação e bibliotecas atuais, oportunamente escreverei sobre. Por enquanto, você pode acompanhar o andamento do projeto pelo [GitHub].

## O script gerado

Como prometido, aqui está o _script_ que eu gerei com o Claude Code, que pode ser útil para mais alguém:

```bash
#!/usr/bin/env bash
#
# Uso: ./dedupe.sh <pastaA> <pastaB>
#
# Compara arquivos de mesmo nome entre A e B (por soma de verificacao) e os
# organiza em subpastas "duplicados" e "unicos" dentro de cada uma.

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Uso: $0 <pastaA> <pastaB>" >&2
    exit 1
fi

A="$1"
B="$2"

if [ ! -d "$A" ] || [ ! -d "$B" ]; then
    echo "Erro: ambos os argumentos devem ser pastas existentes." >&2
    exit 1
fi

A="$(realpath "$A")"
B="$(realpath "$B")"

mkdir -p "$A/duplicados" "$A/unicos" "$B/duplicados" "$B/unicos"

checksum() {
    sha256sum "$1" | awk '{print $1}'
}

# Percorre os arquivos de A, ignorando as subpastas duplicados/unicos (para
# permitir reexecucao segura do script).
find "$A" -type f \
    -not -path "$A/duplicados/*" \
    -not -path "$A/unicos/*" \
    -print0 |
while IFS= read -r -d '' fileA; do
    X="${fileA#"$A"/}"
    fileB="$B/$X"

    mkdir -p "$(dirname "$A/duplicados/$X")" "$(dirname "$A/unicos/$X")"

    if [ -f "$fileB" ]; then
        if [ "$(checksum "$fileA")" = "$(checksum "$fileB")" ]; then
            mkdir -p "$(dirname "$B/duplicados/$X")"
            mv "$fileA" "$A/duplicados/$X"
            mv "$fileB" "$B/duplicados/$X"
            echo "Duplicado: $X"
        else
            mkdir -p "$(dirname "$B/unicos/$X")"
            mv "$fileA" "$A/unicos/$X"
            mv "$fileB" "$B/unicos/$X"
            echo "Diferente: $X"
        fi
    else
        mv "$fileA" "$A/unicos/$X"
        echo "So em A: $X"
    fi
done

# Move para B/unicos qualquer arquivo restante em B que nao esteja em
# duplicados nem unicos (ou seja, arquivos que so existiam em B).
find "$B" -type f \
    -not -path "$B/duplicados/*" \
    -not -path "$B/unicos/*" \
    -print0 |
while IFS= read -r -d '' fileB; do
    X="${fileB#"$B"/}"
    mkdir -p "$(dirname "$B/unicos/$X")"
    mv "$fileB" "$B/unicos/$X"
    echo "So em B: $X"
done

echo "Concluido."
```

[Claude Code]:          https://claude.com/product/claude-code
[Hashtag Programação]:  https://www.youtube.com/watch?v=yDO21vewdes
[Claude How To]:        https://github.com/luongnv89/claude-howto
[Anthropic]:            https://www.anthropic.com/
[extensão]:             https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code
[VS Code]:              https://linuxkamarada.com/pt/2025/03/16/conheca-o-visual-studio-code-vs-code-o-ambiente-de-desenvolvimento-do-momento/
[GitHub Copilot]:       {{% ref "2026-03-25-script-em-python-para-organizar-fotos-em-pastas-por-data-minha-primeira-experiencia-com-o-github-copilot" %}}
[plano]:                https://claude.com/pricing
[Claude]:               https://claude.ai/
[vibe coding]:          https://www.alura.com.br/empresas/artigos/vibe-coding
[Windows 98]:           {{% ref "2025-10-31-como-rodar-o-windows-98-no-virtualbox-em-2025" %}}
[GNOME Hearts]:         https://www.jejik.com/gnome-hearts
[GitHub]:               https://github.com/kamarada/gnome-hearts