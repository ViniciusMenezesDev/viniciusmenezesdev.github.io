---
date: '2025-10-31 01:20:00 GMT-3'
layout: post
published: true
title: 'Como rodar o Windows 98 no VirtualBox em 2025'
image: /files/2025/10/windows98.jpg
---

{% include image.html src="/files/2025/10/windows98.jpg" %}

Se você usava computadores na década de 90 ou início dos anos 2000, certamente conheceu o [Windows 98], que marcou sua infância, vida escolar, acadêmica ou profissional. No meu caso, o Windows 98 foi o primeiro sistema operacional que usei e marcou minha infância. Esse mês tivemos o dia das crianças e eu quis revisitar os jogos que joguei quando era criança. Consegui instalar o Windows 98 em uma máquina virtual do [VirtualBox] e rodar vários jogos. A experiência foi tão boa que decidi escrever esse tutorial para o caso de mais alguém querer me acompanhar nesse momento nostalgia.

Note que não vou aqui apresentar um passo a passo minucioso como normalmente costumo fazer nos tutoriais deste _site_ e do [Linux Kamarada]. Em vez disso, vou supor que você sabe instalar e usar tanto o VirtualBox quanto o Windows 98, e vou focar nos detalhes de como fazer o Windows 98 funcionar no VirtualBox em computadores atuais.

Caso você não conheça o VirtualBox, os seguintes tutoriais podem te ajudar:

- [VirtualBox: a forma mais fácil de conhecer o Linux sem precisar instalá-lo][linuxkamarada-virtualbox]
- [Dicas para usar o VirtualBox no dia a dia][dicas-virtualbox]

Para referência futura (se você estiver lendo esse tutorial no futuro, pode ser que precise fazer algo diferente), no momento estou usando o VirtualBox versão 7.2.2 (lançado em [10 de setembro de 2025][virtualbox-changelog]) instalado no [Linux Kamarada][manjaro-kamarada]. O VirtualBox também pode ser usado no [Windows] e, se esse é o seu caso, o passo-a-passo a seguir muito provavelmente é parecido. Também observo que esse tutorial serve tanto para o Windows 98 quanto para o Windows 98 SE.

Para demonstrar que é possível jogar com o Windows 98 no VirtualBox, apresentarei aqui 4 jogos que são considerados _abandonware_.

## O que é abandonware?

**_[Abandonware]_** (um neologismo para "_sofware_ abandonado") é como é chamado um programa que não é mais vendido, nem em lojas físicas nem _online_, e que também não recebe mais suporte do seu criador. Com o tempo, eles acabam deixando de funcionar em sistemas operacionais modernos. Isso acontece com muitos jogos de computador e de _videogame_, que acabam "ficando para trás" conforme a tecnologia avança.

Não existe uma regra exata para dizer se um jogo é ou não _abandonware_. É mais uma questão de bom senso: o jogo ainda tem direitos autorais, mas o dono não parece mais se importar em vendê-lo ou protegê-lo. Às vezes, a empresa que fez o jogo simplesmente fechou as portas. Outras vezes, o próprio criador decide liberar o jogo ou até mesmo o código-fonte, como aconteceu com o [Tyrian].

Note que muitos jogos que antes eram considerados _abandonware_ foram refeitos para sistemas mais atuais e agora estão disponíveis em plataformas como [GOG.com] ou [Steam]. Para jogá-los, você não precisa de uma máquina virtual com Windows 98. Exemplos incluem:

- [Age of Empires II](https://www.myabandonware.com/game/age-of-empires-ii-gold-edition-3fx)
- [Counter-Strike](https://www.myabandonware.com/game/half-life-counter-strike-d6s)
- [Diablo II](https://www.myabandonware.com/game/diablo-ii-e6y)
- [Half Life](https://www.myabandonware.com/game/half-life-d5a)
- [RollerCoaster Tycoon](https://www.myabandonware.com/game/rollercoaster-tycoon-d2k)
- [The Sims](https://www.myabandonware.com/game/the-sims-bf5)
- [Tomb Raider](https://www.myabandonware.com/game/tomb-raider-d7x)
- [Tyrian 2000](https://www.myabandonware.com/game/tyrian-2000-9zi)
- [Worms 2](https://www.myabandonware.com/game/worms-2-497)
- [Worms: Armageddon](https://www.myabandonware.com/game/worms-armageddon-cyj)

O _site_ [My Abandonware] é uma boa referência: os jogos que eles disponibilizam para _download_ podem ser seguramente considerados _abandonware_. Quando um jogo é "revivido", como os listados acima, eles atualizam a página do jogo com _links_ para lojas, como as citadas GOG.com ou Steam.

## Sugestões de jogos para Windows 98

{% include youtube.html id="OK10BIt_2vM" %}

[**Astérix & Obélix**][obelix] é um jogo de plataforma lançado em 1996 para [MS-DOS] e Windows, baseado nos famosos personagens das histórias em quadrinhos francesas. Desenvolvido pela Infogrames, o jogo permite controlar Astérix ou Obélix em fases inspiradas nos quadrinhos, viajando pelo Império Romano. O estilo lembra bastante os jogos de plataforma clássicos da época, com gráficos coloridos em 2D e trilha sonora animada. Apesar de simples, ele conquistou fãs por sua fidelidade ao humor e à estética das HQs originais.

{% include youtube.html id="bmwGe34A8EE" %}

[**Beast Wars: Transformers**][beast-wars] é um jogo de ação em 3D lançado em 1998 para Windows (e também para [PlayStation]), baseado no desenho de mesmo nome da franquia [Transformers]. Publicado pela Hasbro Interactive, o jogo coloca o jogador no controle de personagens das facções Maximals ou Predacons, podendo alternar entre a forma animal e robô durante as missões. Com gráficos impressionantes para a época, o jogo é lembrado com carinho pelos fãs da série por trazer o universo de Beast Wars para o PC.

{% include youtube.html id="Nax_ZOdOIIM" %}

[**Mario & Luigi**][mario] (mais conhecido simplesmente como "Mario") é um jogo gratuito para MS-DOS amplamente divulgado nos anos 2000. Criado por Mike Wiering da [Wiering Software] e inspirado no [Super Mario], o jogo apresenta gráficos 2D simples, seis fases e jogabilidade clássica de plataforma, com pulo, corrida e super poderes. Ele não é um jogo oficial licenciado pela [Nintendo], mas sim um _fangame_ (jogo criado por fãs). Começou como um projeto pessoal para praticar programação em Turbo Pascal e seu [código-fonte][mario-src] está disponível.

Aliás, se você gosta de jogos nesse estilo, a [Wiering Software] tem outros jogos que vale a pena conferir.

{% include youtube.html id="SDPhiQEWWcw" %}

[**3D Pinball: Space Cadet**][pinball] é um clássico jogo de fliperama incluído no [Microsoft Plus! for Windows 95][plus] e mais tarde no [Windows XP]. Publicado pela [Microsoft], ele fazia parte do pacote [Full Tilt! Pinball], que trazia outras mesas além da Space Cadet. No jogo, o objetivo é subir de patente em uma missão espacial, cumprindo tarefas e acumulando pontos em uma mesa temática cheia de luzes e efeitos sonoros. Apesar de simples, ficou famoso por ser um dos jogos mais populares pré-instalados no Windows.

## Limitações do Windows 98 no VirtualBox

Normalmente, quando usamos o VirtualBox, os [adicionais para convidado (_Guest Additions_)][guest-additions-1] são nossos melhores amigos, permitindo uma integração maior entre o sistema hospedeiro e o sistema instalado na máquina virtual. A má notícia é que eles [não estão disponíveis para o Windows 98][guest-additions-2]. Isso não impede de usar o Windows 98 no VirtualBox, apenas algumas funcionalidades que tornariam isso mais fácil não estarão disponíveis, como área de transferência compartilhada.

Observe também que você não vai conseguir abrir a quase totalidade dos _sites_ atuais com o navegador [Internet Explorer] que vem no Windows 98. Ainda assim, precisaremos instalar _drivers_, programas e jogos no Windows 98. Portanto, precisaremos baixá-los na máquina real e passá-los para a máquina virtual.

O que nos leva à próxima limitação: como passar arquivos da máquina real para a máquina virtual (e vice-versa)? Eu, particularmente, quando trabalho com máquinas virtuais, prefiro passar arquivos pela rede. Porém, a versão do [protocolo SMB] (mais conhecido como "[compartilhamento de arquivos e impressoras][hardware]") presente no Windows 98 ([SMB 1.0]) é [antigo e inseguro][tecnoblog] e não é suportado nas versões mais recentes do [Windows][learn.microsoft] e do [Linux][wiki.archlinux].

Com isso, para passar arquivos de/para a VM, nos restam as seguintes opções:

- usar algum programa para criar uma imagem ISO e depois inserir essa imagem ISO no leitor de DVD virtual (exemplos de programas que criam imagens ISO incluem o [CDBurnerXP] no Windows e o [Brasero] no Linux)
- usar um _pendrive_ formatado com FAT32 (é a forma mais fácil, inclusive você pode formatar usando o próprio Windows 98 da máquina virtual, mas note que mesmo que você use um _pendrive_ para passar a maioria dos arquivos, ainda terá que instalar o _driver_ USB antes por meio de uma imagem ISO para poder conseguir usar o _pendrive_);
- usar o [protocolo FTP][ftp]: o [FileZilla], por exemplo, oferece tanto cliente quanto servidor FTP, você poderia instalar o cliente na máquina virtual (uma versão mais antiga, compatível com o Windows 98, claro) e o servidor no seu computador, ou o contrário;
- se você manja de servidores _web_, poderia tentar instalar o [Apache] ou o [nginx] no seu computador e baixar os arquivos na máquina virtual usando o Internet Explorer.

Nesse tutorial, vou optar por usar o _pendrive_. Fique a vontade para usar outra solução se preferir e adaptar o tutorial conforme necessário.

Note que se estivéssemos usando o Windows XP, não teríamos [nenhuma dessas limitações][xp]. Uma possível limitação seria que muitos aplicativos não funcionam bem mesmo no modo de compatibilidade com o Windows 98. Quem sabe em uma próxima aventura nostálgica não experimento rodar o Windows XP no VirtualBox? Se você gostaria de ver isso, por favor, comente no final.

## O que vamos precisar

Antes de começarmos, aqui vai uma lista de arquivos para você baixar e se organizar da forma que achar melhor:

- **CD ou imagem ISO do Windows 98:** caso você tenha um CD do Windows 98, mas seu computador não tenha uma unidade de CD, não é caro comprar uma pelo [Mercado Livre]. Também não é difícil encontrar imagens ISO do Windows 98 para _download_ na Internet, só não vou compartilhar o _link_ aqui.

- **Imagem de disquete do [patcher9x]:** [`patcher9x-0.9.88-boot.img`][patcher9x-img]

- **Imagem ISO com o _driver_ USB:** foi propagandeado na época que uma das novidades do Windows 98 em comparação com o Windows 95 era o suporte a USB, o que não era mentira, mas o Windows 98 não suportava USB 2.0, nem _pendrives_, o que podia ser conseguido com _drivers_ de terceiros.
  - Se você pretende usar um _pendrive_ para passar arquivos para a VM, pode baixar uma imagem ISO com o _driver_ USB aqui: [`driver-usb-ptbr.iso`][driver-usb-iso].
  - Se você pretende criar sua própria imagem ISO com os arquivos, pode baixar o _driver_ USB como um arquivo ZIP aqui: [`usb33_ptbr.zip`][driver-usb-zip].
<br/><br/>
- Imagem ISO do [Astérix & Obélix][obelix] (se você quiser jogar esse jogo)

- Imagem ISO do [Beast Wars: Transformers][beast-wars] (se você quiser jogar esse jogo)

Note que os arquivos que listei até agora ficarão no seu computador, você não passará para dentro da máquina virtual. Os arquivos a seguir você precisará passar para dentro da máquina virtual:

- **Compactador:** eu recomendo usar a última versão do [WinRAR] compatível com o Windows 98 ([`wrar393br.exe`][winrar-exe]), mas você também pode usar uma versão antiga do [WinZip] ([`winzip100.exe`][winzip-exe]) ou do [7-Zip] ([`7z920.exe`][7zip-exe])
- **_Driver_ de vídeo do [SoftGPU]:** [`softgpu-0.8.2025.53.zip`][softgpu-zip] (alternativamente, assim como o _driver_ USB, há uma imagem ISO disponível: [`softgpu-0.8.2025.53.iso`][softgpu-iso])
- **_Driver_ de áudio do ICH AC97:** [`0001-VXD_A406.exe`][ac97]
- **_Driver_ do controle de Xbox 360:** [`x360c.w98.x86.en.zip`][x360-zip] (caso você tenha um controle desse e queira usar com o Windows 98)
- **Mario & Luigi:** [`Mario-Luigi_DOS_EN.zip`][mario-zip] (se você quiser jogar esse jogo)
- **3D Pinball: Space Cadet:** [`Space-Cadet-3D-Pinball_Win_EN.exe`][pinball-exe] (se você quiser jogar esse jogo)

## Recomendações gerais

Ainda antes de começarmos, aqui vão algumas recomendações:

- faça _[snapshots]_ da máquina virtual conforme vai avançando no tutorial. Assim, se algo der errado, você pode voltar para um ponto em que a máquina virtual estava funcionando e tentar de novo;
- sempre que um instalador ou o próprio Windows disser que é recomendado reiniciar e perguntar se você deseja fazê-lo, responda que sim;
- por vezes, você terá que reiniciar a máquina virtual "na marra" por meio do VirtualBox, isso é esperado, está tudo bem (na verdade, você até já fazia isso com seu computador antigo, não é mesmo?)

Sem mais delongas, vamos meter a mão na massa!

## Criando a máquina virtual

Inicie o VirtualBox e crie uma máquina virtual com as seguintes configurações:

- **Sistema operacional:** Windows 98
- **Memória RAM:** 128 MB
- **Disco rígido virtual:** 16 GB
- **Rede:** placa em modo _bridge_

Insira a imagem ISO do Windows 98 no leitor de DVD virtual e inicie a VM.

## Instalando o Windows 98

Instale o Windows 98 como faria normalmente.

Já no final da instalação, você vai se deparar com um detalhe do Windows 98 no VirtualBox, a mensagem de erro: "O arquivo SHELL32.DLL está vinculado ao SHLWAPI.DLL de exportação que não foi encontrado:tFileAttributesA."

{% include image.html src="/files/2025/10/windows98-01.png" %}

Também aparece uma mensagem de erro referente ao Explorer: "Este programa executou uma operação ilegal e será fechado."

Pode fechar ambas as mensagens de erro e reiniciar a máquina virtual.

Se você tentar entrar no Windows, receberá as mesmas mensagens de erro.

Insira a imagem de disquete do patcher9x na unidade de disquete virtual e reinicie a máquina virtual:

{% include image.html src="/files/2025/10/windows98-02.png" %}

No _prompt_ do MS-DOS, execute `patch9x`:

{% include image.html src="/files/2025/10/windows98-03.png" %}

Aceite as respostas padrão para as perguntas teclando **Enter** e quando perguntado se deseja aplicar os _patches_, responda que sim com `y`:

{% include image.html src="/files/2025/10/windows98-04.png" %}

{% include image.html src="/files/2025/10/windows98-05.png" %}

Ao final, remova a imagem de disquete e reinicie a máquina virtual.

Agora sim você conseguirá iniciar o Windows 98 normalmente:

{% include image.html src="/files/2025/10/windows98-06.png" %}

Mas note que os gráficos estão configurados de forma genérica com 256 cores apenas.

## Instalando o driver USB

Remova a imagem ISO do Windows 98 do leitor de DVD virtual e insira a imagem ISO do _driver_ USB. Inicie a instalação fazendo duplo-clique no _script_ `_start.bat`:

{% include image.html src="/files/2025/10/windows98-07.png" %}

Depois, reinicie o computador.

Conecte um _pendrive_ no seu computador (certifique-se de que não tenha nenhum arquivo importante nele e que possa formatá-lo) e passe-o para a máquina virtual:

{% include image.html src="/files/2025/10/windows98-08.png" %}

Na primeira vez, o _pendrive_ não é reconhecido de imediato. Vá em **Painel de controle > Sistema > Gerenciador de dispositivos**, selecione **Outros dispositivos > PCI Universal Serial Bus** e clique no botão **Propriedades**:

{% include image.html src="/files/2025/10/windows98-09.png" %}

Note: "Os drivers para este dispositivo não estão instalados". Para resolver isso, clique em **Reinstalar driver**. Ordene que o assistente procure o _driver_ na unidade de CD-ROM. O sistema vai encontrar e instalar o _driver_ para o controlador USB e na sequência vai fazer o mesmo para o _pendrive_:

{% include image.html src="/files/2025/10/windows98-10.png" %}

Quando terminar, o _pendrive_ já aparecerá no **Meu computador**:

{% include image.html src="/files/2025/10/windows98-11.png" %}

## Passando arquivos para a máquina virtual

Formate o _pendrive_ e ejete-o (primeiro no Windows 98 e depois no VirtualBox).

Agora o _pendrive_ aparecerá no seu computador, formatado com o sistema de arquivos FAT32.

Passe os arquivos que vamos precisar para o _pendrive_.

Depois, insira-o de novo na máquina virtual:

{% include image.html src="/files/2025/10/windows98-12.png" %}

Copie esses arquivos para algum lugar como **Meus documentos** e ejete o _pendrive_.

## Compactador

Na sequência, instale o compactador de sua preferência (WinRAR, WinZip ou 7-Zip, ou todos). Alguns _drivers_ e jogos são arquivos compactados e você vai precisar de um compactador para extrai-los.

{% include image.html src="/files/2025/10/windows98-13.jpg" caption="Lembra dessa tela? rsrs" %}

## Driver de vídeo

Desligue a máquina virtual.

Depois, faça a seguinte alteração na configuração da máquina virtual:

- **Sistema operacional:** Windows 7 de 32 bits

Clique em **OK** para aplicá-la. Essa alteração por si só não vai mudar nada no _hardware_ da máquina virtual, mas vai nos permitir fazer as alterações seguintes.

Agora volte na configuração da máquina virtual e faça mais alterações:

- **Memória de vídeo:** 128 MB
- **Controladora gráfica:** VBoxSVGA
- **Recursos:** Aceleração 3D

Inicie a VM. O Windows 98 vai detectar a nova placa de vídeo. Você pode seguir o assistente, instalar o _driver_ recomendado pelo próprio Windows e reiniciar.

Agora vamos instalar o _driver_ de vídeo do SoftGPU, que vai conferir aceleração 3D a essa máquina virtual. Vá até **Meus documentos**, extraia o arquivo ZIP contendo o SoftGPU. Entre na pasta do SoftGPU e rode o `softgpu.exe`.

Certifique-se de que a versão do VirtualBox está corretamente selecionada no campo **Hypervisor preset** e clique no botão **Install**:

{% include image.html src="/files/2025/10/windows98-14.png" %}

Primeiro, é instalado o DirectX e a máquina virtual é reiniciada. Depois, inicie o instalador do SoftGPU, clique no botão **Install**, aguarde e reinicie mais uma vez.

Dessa vez, o sistema já é iniciado com gráficos melhores. Você também consegue configurar uma resolução maior:

{% include image.html src="/files/2025/10/windows98-15.png" %}

## Driver de áudio

Quando criamos a máquina virtual e escolhemos o sistema operacional Windows 98, por padrão o VirtualBox seleciona emular a placa de som SoundBlaster 16. Se quiser, você pode continuar com essa configuração, note inclusive que o som já funciona. No entanto, essa placa de som emulada não é capaz de tocar MIDI, que é necessário para alguns jogos.

Para mudar o modelo da placa de som, desligue a máquina virtual. Depois, faça a seguinte alteração na configuração da máquina virtual:

- **Controladora de áudio:** ICH AC97

Inicie a máquina virtual. Depois, usando o WinRAR, extraia o conteúdo do instalador do _driver_ de áudio (`0001-VXD_A406.exe`):

{% include image.html src="/files/2025/10/windows98-16.jpg" %}

Dentro da pasta extraída, há uma pasta `Win95`. O _driver_ em si está nela.

Vá no **Painel de controle** e inicie o assistente para **Adicionar novo hardware**. Ordene que o assistente procure o _driver_ na pasta `Win95`.

Quando terminar, você já terá som novamente, sem precisar reiniciar a VM.

## Controle de Xbox 360 (opcional)

Opcionalmente, se você tem um controle de Xbox 360 e quer usá-lo, extraia o conteúdo do arquivo ZIP do _driver_, conecte o controle à máquina virtual (da mesma forma como fez com o _pendrive_) e instale seu _driver_ usando o assistente para **Adicionar novo hardware**.

## Pronto para a jogatina!

Se você chegou até aqui, sua máquina virtual com Windows 98 já está pronta para ser usada, para rodar quaisquer jogos e programas que você queira.

Espero que faça bom proveito! Se você tiver alguma dúvida ou sugestão, escreva nos comentários. Abraço e até a próxima!

## Referências

Para ver como rodar o Windows 98 no VirtualBox e depois para escrever esse tutorial, eu consultei várias páginas. Eu já deixei _links_ para muitas delas no texto, mas consultei também (e principalmente) as seguintes:

- [Como baixar, instalar e ativar o Windows 98 \| Guia Prático - Canaltech][canaltech]
- [Windows 98se step by step - fórum do VirtualBox][forums-virtualbox]
- [How to install Windows 98 SE in VirtualBox VM - January 2025 - 96075d82 - nmariusp - YouTube][youtube1]
- [PENDRIVE NO Windows 98 driver que não muda o idioma par inglês - Vida de Tecnico Ti Retro Hardware - YouTube][youtube2]
- [How to play midi music in VirtualBox Windows 98? - Super User][superuser]
- [Xbox 360 controller driver install - reddit/windows98][reddit]

[Windows 98]:               https://pt.wikipedia.org/wiki/Windows_98
[VirtualBox]:               https://linuxkamarada.com/pt/2019/07/12/20-aplicativos-que-voce-pode-usar-do-mesmo-jeito-no-linux-e-no-windows-parte-2/#13-virtualbox
[Linux Kamarada]:           https://linuxkamarada.com/
[linuxkamarada-virtualbox]: https://linuxkamarada.com/pt/2019/10/08/virtualbox-a-forma-mais-facil-de-conhecer-o-linux-sem-precisar-instala-lo/
[dicas-virtualbox]:         https://linuxkamarada.com/pt/2019/10/30/dicas-para-usar-o-virtualbox-no-dia-a-dia/
[virtualbox-changelog]:     https://www.virtualbox.org/wiki/Changelog
[manjaro-kamarada]:         https://linuxkamarada.com/pt/2025/10/12/linux-kamarada-muda-sua-base-para-o-manjaro/
[Windows]:                  https://www.microsoft.com/pt-br/windows/
[Abandonware]:              https://pt.wikipedia.org/wiki/Abandonware
[Tyrian]:                   https://pt.wikipedia.org/wiki/Tyrian#OpenTyrian
[GOG.com]:                  https://www.gog.com/en/
[Steam]:                    https://store.steampowered.com/
[My Abandonware]:           https://www.myabandonware.com/
[obelix]:                   https://www.myabandonware.com/game/asterix-obelix-38o
[MS-DOS]:                   https://pt.wikipedia.org/wiki/MS-DOS
[beast-wars]:               https://www.myabandonware.com/game/beast-wars-transformers-drr
[PlayStation]:              https://pt.wikipedia.org/wiki/PlayStation_(console)
[Transformers]:             https://pt.wikipedia.org/wiki/Transformers
[mario]:                    https://www.myabandonware.com/game/mario-luigi-bz3
[Wiering Software]:         https://wieringsoftware.com/
[Super Mario]:              https://pt.wikipedia.org/wiki/Super_Mario
[Nintendo]:                 https://www.nintendo.com/pt-br/
[mario-src]:                http://www.wieringsoftware.nl/mario/
[pinball]:                  https://www.myabandonware.com/game/space-cadet-3d-pinball-bc1
[plus]:                     https://en.wikipedia.org/wiki/Microsoft_Plus!#Microsoft_Plus!_for_Windows_95
[Windows XP]:               https://pt.wikipedia.org/wiki/Windows_XP
[Microsoft]:                https://www.microsoft.com/pt-br
[Full Tilt! Pinball]:       https://www.myabandonware.com/game/full-tilt-pinball-a3m
[guest-additions-1]:        https://linuxkamarada.com/pt/2019/10/30/dicas-para-usar-o-virtualbox-no-dia-a-dia/#adicionais-para-convidado-guest-additions
[guest-additions-2]:        https://www.virtualbox.org/manual/ch04.html#additions-windows
[Internet Explorer]:        https://pt.wikipedia.org/wiki/Internet_Explorer
[protocolo SMB]:            https://pt.wikipedia.org/wiki/Server_Message_Block
[hardware]:                 https://www.hardware.com.br/tutoriais/configuracao-rede-win-98/
[SMB 1.0]:                  https://en.wikipedia.org/wiki/Server_Message_Block#SMB_1.0
[tecnoblog]:                https://tecnoblog.net/especiais/como-desativar-smb-v1-windows/
[learn.microsoft]:          https://learn.microsoft.com/pt-br/windows-server/storage/file-server/troubleshoot/smbv1-not-installed-by-default-in-windows
[wiki.archlinux]:           https://wiki.archlinux.org/title/Samba#Restrict_protocols_for_better_security
[CDBurnerXP]:               https://cdburnerxp.se/
[Brasero]:                  https://wiki.gnome.org/Apps/Brasero
[ftp]:                      https://pt.wikipedia.org/wiki/Protocolo_de_Transfer%C3%AAncia_de_Arquivos
[FileZilla]:                https://filezilla-project.org/
[Apache]:                   https://httpd.apache.org/
[nginx]:                    https://nginx.org/
[xp]:                       https://forums.virtualbox.org/viewtopic.php?p=123370#p123370
[Mercado Livre]:            https://lista.mercadolivre.com.br/leitor-de-cd
[patcher9x]:                https://github.com/JHRobotics/patcher9x
[patcher9x-img]:            https://github.com/JHRobotics/patcher9x/releases/download/v0.9.88/patcher9x-0.9.88-boot.img
[driver-usb-iso]:           /files/2025/10/driver-usb-ptbr.iso
[driver-usb-zip]:           https://drive.google.com/file/d/1_HB_14vgXbPL3yC665NSlyIkg4qaC5n7/view
[WinRAR]:                   https://www.win-rar.com/start.html?&L=9
[winrar-exe]:               https://web.archive.org/web/20130905155953if_/http://www.rarlab.com/rar/wrar393br.exe
[WinZip]:                   https://www.winzip.com/br/
[winzip-exe]:               https://download.winzip.com/ov/winzip100.exe
[7-Zip]:                    https://7-zip.org/
[7zip-exe]:                 https://7-zip.org/a/7z920.exe
[SoftGPU]:                  https://github.com/JHRobotics/softgpu
[softgpu-zip]:              https://github.com/JHRobotics/softgpu/releases/download/v0.8.2025.53/softgpu-0.8.2025.53.zip
[softgpu-iso]:              https://github.com/JHRobotics/softgpu/releases/download/v0.8.2025.53/softgpu-0.8.2025.53.iso
[ac97]:                     https://web.archive.org/web/20180913222117/https://az695102.vo.msecnd.net/rtdrivers/pc/audio/0001-VXD_A406.exe
[x360-zip]:                 https://vogonsdrivers.com/files/downloader.php?fileid=1033
[mario-zip]:                https://d2.myabandonware.com/t/5bf95ee2-19d4-415c-a5c5-295e2a473927/Mario-Luigi_DOS_EN.zip
[pinball-exe]:              https://d3.myabandonware.com/t/7e748b78-370c-473d-b519-588f9def40f5/Space-Cadet-3D-Pinball_Win_EN.exe
[snapshots]:                https://www.virtualbox.org/manual/ch01.html#snapshots
[canaltech]:                https://canaltech.com.br/apps/como-baixar-instalar-e-ativar-o-windows-98/
[forums-virtualbox]:        https://forums.virtualbox.org/viewtopic.php?t=59559
[youtube1]:                 https://www.youtube.com/watch?v=VXYUtdKfYUM
[youtube2]:                 https://www.youtube.com/watch?v=DMtaLBnwVqw
[superuser]:                https://superuser.com/a/1358005/458848
[reddit]:                   https://www.reddit.com/r/windows98/comments/9c5iag/xbox_360_controller_driver_install/