---
date: '2026-03-25T22:00:00'
image: /files/2026/03/github-copilot-pt.jpg
title: 'Script em Python para organizar fotos em pastas por data: minha primeira experiência com o GitHub Copilot'
translationKey: github-copilot
---

{{< image src="/files/2026/03/github-copilot-pt.jpg" >}}

A inteligência artificial veio para aumentar sobremaneira nossa produtividade. O [ChatGPT], por exemplo, tem me ajudado a escrever textos: se você tem uma ideia do caminho que quer que seu texto percorra, pode lhe fazer perguntas em sequência e pedir que responda cada uma em um parágrafo. Claro que a revisão humana é indispensável, mas depois disso você tem um texto pronto em bem menos tempo que se você tivesse que pensar não no roteiro, mas em cada palavra.

O ChatGPT também consegue ajudar com comandos e programação. Mas como tenho ouvido falar muito do [GitHub Copilot] e já uso o [GitHub] e o [Visual Studio Code], decidi experimentá-lo. Eu precisava de um _script_ simples para resolver um problema do dia-a-dia e o pedi ao GitHub Copilot, que resolveu meu problema.

O GitHub Copilot é um assistente de programação baseado em inteligência artificial desenvolvido pelo GitHub em parceria com a [OpenAI] (aliás, a empresa por trás do ChatGPT). Ele é capaz de sugerir trechos de código, funções completas e até soluções inteiras diretamente no ambiente de desenvolvimento. Utilizando modelos avançados de linguagem treinados em grandes volumes de código (os repositórios públicos no GitHub), ele entende o contexto do que está sendo escrito e oferece sugestões em tempo real, ajudando a aumentar a produtividade, reduzir erros e acelerar o aprendizado de novas linguagens e _frameworks_.

É possível usar o [GitHub Copilot no navegador][copilot], assim como o ChatGPT, mas eu estava mais interessado em ver como usá-lo no VS Code.

**O problema a ser resolvido:** eu tenho uma pasta com várias fotos que desejo organizar. Para isso, quero agrupar as fotos por data, colocando as fotos batidas em um mesmo dia na mesma pasta. Essas fotos foram batidas por celulares diferentes. Dependendo do celular, ele nomeia o arquivo com a data e a hora da foto (por exemplo, `20251116_174828.jpg`), ou com números sequenciais (`IMG_2248.JPG`, `IMG_2249.JPG`, `IMG_2250.JPG`...) No primeiro caso, é mais fácil descobrir a data em que a foto foi batida: basta olhar para o nome do arquivo. No segundo caso, é necessário examinar os metadados [EXIF] registrados pelo celular no arquivo de imagem para determinar a data da foto.

{{< image src="/files/2026/03/github-copilot-01-pt.jpg" caption="Dependendo do modelo de celular, o nome do arquivo não contém a data da foto, é preciso examinar os metadados." >}}

Imaginei que um _script_ em [Python] daria conta do recado. Escolhi essa linguagem de programação por ser natural para o [Linux], o sistema que uso.

Pesquisei como começar a usar o GitHub Copilot, encontrei o _[Quickstart]_ (início rápido), comecei a segui-lo e rapidamente consegui um _script_ que funcionou para resolver meu problema. A seguir, mostro como fiz e você pode fazer também. Modéstia a parte, considero meu exemplo mais interessante.

Para usar o GitHub Copilot, você precisará de uma conta pessoal do [GitHub](https://github.com/) com acesso a um [plano do Copilot][plans]. Você pode começar com o plano _Free_ (gratuito), como eu fiz. Tem limitações, mas já te permite ter um primeiro contato com o GitHub Copilot sem precisar gastar dinheiro já em um primeiro momento.

Você pode clicar [neste _link_][copilot-free] para ativar o plano gratuito do Copilot na sua conta do GitHub.

Em seguida, você precisará entrar com sua conta do GitHub no seu ambiente de desenvolvimento. Mostrarei como fazer no VS Code, que é o que eu uso, mas tenha em mente que o GitHub Copilot está disponível para outros IDEs, como [JetBrains] e [Eclipse]. Se você usa outro IDE, pesquise como fazer no seu IDE, mas deve ser mais ou menos parecido.

O VS Code já vem com suporte ao GitHub Copilot integrado. Para ativá-lo, abra o VS Code e aponte para o ícone do GitHub Copilot no canto inferior direito da janela. Clique em **Usar Recursos de IA** e entre com sua conta do GitHub:

{{< image src="/files/2026/03/github-copilot-02-pt.png" >}}

Uma vez habilitado o GitHub Copilot, o _prompt_ passa a aparecer no canto inferior direito da janela, onde se lê **Descreva o que criar**, e já podemos usá-lo:

{{< image src="/files/2026/03/github-copilot-03-pt.png" >}}

Feche o VS Code, crie uma pasta para o projeto e abra o VS Code nessa pasta:

```
$ cd ~
$ mkdir organizar-fotos
$ cd organizar-fotos
$ code .
```

Em seguida, copie e cole esse texto no _prompt_ e tecle **Enter**:

> Crie um _script_ em Python que agrupe fotos na pasta atual com base na data em que foram tiradas. Essa data pode ser obtida de metadados EXIF, de preferência, quando estiverem disponíveis, ou do nome do arquivo (`YYYYMMDD`, por exemplo: `20251116_174828.jpg`). Para cada foto na pasta atual, o _script_ deve determinar a data em que a foto foi tirada, criar uma pasta `YYYY-MM-DD` caso não exista e mover a foto para essa pasta.

Após um tempo "pensando", o GitHub Copilot cria o arquivo na pasta do projeto e ainda dá explicações sobre o código à direita (você pode conferir o _script_ completo no final deste artigo):

{{< image src="/files/2026/03/github-copilot-04-pt.jpg" >}}

Clique em **Manter** para aceitar a sugestão e manter o arquivo.

Note que você pode pedir para o GitHub Copilot fazer alterações no _script_.

Crie um _link_ simbólico para esse _script_ na pasta `~/bin` e atribua-lhe permissão de execução, de modo que você consiga invocá-lo de qualquer pasta:

```
$ ln -s ~/organizar-fotos/organizar_por_data.py ~/bin/organizar-fotos
$ chmod +x ~/bin/organizar-fotos
```

Se precisar de mais informações sobre o que acabei de fazer, consulte:

- [Como criar "comandos personalizados" no Linux - Linux Kamarada][alias]

Instale a dependência do _script_ (instrução dada pelo próprio GitHub Copilot):

```
$ pip install Pillow
```

Note que se você estiver usando o [Linux Kamarada][Linux] ou o [Manjaro], o comando é diferente:

```
$ pamac install python-pillow
```

(na verdade, provavelmente você já tem essa biblioteca instalada no seu sistema)

Pronto! Feito isso, podemos usar o _script_. Mude para a pasta que contém as fotos a serem organizadas e invoque-o:

```
$ cd ~/Imagens
$ organizar-fotos
```
{{< image src="/files/2026/03/github-copilot-05-pt.png" >}}

A pasta de fotos que antes estava assim:

{{< image src="/files/2026/03/github-copilot-06-pt.jpg" >}}

Após a execução do _script_, passa a estar assim:

{{< image src="/files/2026/03/github-copilot-07-pt.png" >}}

É impressionante ver como graças a IA conseguimos conversar com o computador em linguagem humana natural, e como ela pode nos ajudar a resolver problemas do cotidiano. Mas note que, como diz o ditado, "até para perguntar, é preciso saber": a resposta da IA só é tão boa quanto é a nossa pergunta. Se eu não soubesse da existência dos metadados EXIF e/ou não explicasse bem o problema a ser resolvido, talvez a IA não teria gerado um _script_ que me atendesse tão perfeitamente.

## O script gerado

Confira a seguir o _script_ gerado pelo GitHub Copilot.

Observe que a IA do GitHub Copilot ainda teve a iniciativa de fazer algo que não pedimos, mas nos ajuda: se não for possível obter a data da foto nem do nome do arquivo, nem dos metadados EXIF, o _script_ vai considerar a data de modificação do arquivo.

**Atualização (27/07/2026):** pedi para o GitHub Copilot modificar o _script_ de modo que ele crie subpastas para o ano (`YYYY`), o mês (`YYYY-MM`) e o dia (`YYYY-MM-DD`). A versão a seguir já contém essa modificação.

```python
#!/usr/bin/env python3
"""Organizar fotos em subpastas YYYY / YYYY-MM / YYYY-MM-DD por data de captura.

- EXIF DateTimeOriginal / DateTime são prioridade (quando disponíveis).
- Se EXIF não estiver presente, tenta extrair de nome de arquivo YYYYMMDD ou YYYYMMDDHHMMSS.
- Se não for possível, usa a data de modificação do arquivo como fallback.
"""

import os
import re
import shutil
from datetime import datetime

from pathlib import Path

try:
    from PIL import Image
    from PIL.ExifTags import TAGS
except ImportError:
    Image = None

PHOTO_EXTENSIONS = {'.jpg', '.jpeg', '.png', '.heic', '.heif', '.tiff', '.bmp', '.gif'}

EXIF_DATE_KEYS = ['DateTimeOriginal', 'DateTime', 'DateTimeDigitized']

DATEPATTERNS = [
    re.compile(r"(?P<y>\d{4})(?P<m>\d{2})(?P<d>\d{2})"),
    re.compile(r"(?P<y>\d{4})-(?P<m>\d{2})-(?P<d>\d{2})"),
]


def get_exif_date(path: Path) -> datetime | None:
    if Image is None:
        return None

    try:
        with Image.open(path) as img:
            exif = img._getexif() or {}
    except Exception:
        return None

    if not exif:
        return None

    # Map numeric tags to names
    exif_named = {}
    for tag, value in exif.items():
        name = TAGS.get(tag, tag)
        exif_named[name] = value

    for key in EXIF_DATE_KEYS:
        if key in exif_named:
            date_str = exif_named[key]
            if isinstance(date_str, bytes):
                try:
                    date_str = date_str.decode('utf-8', 'ignore')
                except Exception:
                    continue

            # EXIF typical format: "YYYY:MM:DD HH:MM:SS"
            try:
                return datetime.strptime(date_str, '%Y:%m:%d %H:%M:%S')
            except ValueError:
                # Tentar formatos alternativos
                for fmt in ['%Y-%m-%d %H:%M:%S', '%Y%m%d %H:%M:%S', '%Y:%m:%d']:
                    try:
                        return datetime.strptime(date_str, fmt)
                    except ValueError:
                        continue

    return None


def get_date_from_filename(filename: str) -> datetime | None:
    base = Path(filename).stem
    # buscar um padrão de data simples
    for pat in DATEPATTERNS:
        m = pat.search(base)
        if m:
            try:
                return datetime(int(m.group('y')), int(m.group('m')), int(m.group('d')))
            except ValueError:
                continue

    return None


def get_file_mod_date(path: Path) -> datetime:
    ts = path.stat().st_mtime
    return datetime.fromtimestamp(ts)


def process_directory(folder: Path):
    if not folder.is_dir():
        raise ValueError(f"{folder} não é um diretório")

    for entry in folder.iterdir():
        if entry.is_file():
            ext = entry.suffix.lower()
            if ext not in PHOTO_EXTENSIONS:
                continue

            date = get_exif_date(entry)

            if date is None:
                date = get_date_from_filename(entry.name)

            if date is None:
                date = get_file_mod_date(entry)

            year_dir = folder / date.strftime('%Y')
            month_dir = year_dir / date.strftime('%Y-%m')
            day_dir = month_dir / date.strftime('%Y-%m-%d')

            day_dir.mkdir(parents=True, exist_ok=True)

            dest = day_dir / entry.name
            if dest.exists():
                # evita sobrescrever: cria nome alternativo
                base = entry.stem
                i = 1
                while True:
                    candidate = day_dir / f"{base}_{i}{entry.suffix}"
                    if not candidate.exists():
                        dest = candidate
                        break
                    i += 1

            shutil.move(str(entry), str(dest))
            print(f"Movido: {entry.name} -> {day_dir.relative_to(folder).as_posix()}/{dest.name}")


def main():
    folder = Path('.')
    print(f"Processando diretório: {folder.resolve()}")
    process_directory(folder)
    print('Concluído.')


if __name__ == '__main__':
    main()
```

[ChatGPT]:              https://chatgpt.com/
[GitHub Copilot]:       https://github.com/features/copilot?locale=pt-BR
[GitHub]:               https://github.com/ViniciusMenezesDev
[Visual Studio Code]:   https://linuxkamarada.com/pt/2025/03/16/conheca-o-visual-studio-code-vs-code-o-ambiente-de-desenvolvimento-do-momento/
[OpenAI]:               https://openai.com/pt-BR/
[copilot]:              https://github.com/copilot
[EXIF]:                 https://pt.wikipedia.org/wiki/Exchangeable_image_file_format
[Python]:               https://www.python.org/
[Linux]:                https://linuxkamarada.com/pt/2025/10/12/linux-kamarada-muda-sua-base-para-o-manjaro/
[Quickstart]:           https://docs.github.com/en/copilot/get-started/quickstart?tool=vscode
[plans]:                https://github.com/features/copilot/plans?locale=pt-br
[copilot-free]:         https://github.com/copilot?ref_product=copilot&ref_type=engagement&ref_style=button&ref_plan=free
[JetBrains]:            https://plugins.jetbrains.com/plugin/17718-github-copilot
[Eclipse]:              https://marketplace.eclipse.org/content/github-copilot#details
[alias]:                https://linuxkamarada.com/pt/2019/03/17/como-criar-comandos-personalizados-no-linux/
[Manjaro]:              https://manjaro.org/
