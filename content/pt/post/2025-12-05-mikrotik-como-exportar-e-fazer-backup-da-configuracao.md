---
date: "2025-12-05T19:50:00Z"
image: /files/2025/11/mikrotik-hap-ac3.jpg
title: 'MikroTik: como exportar e fazer backup da configuração'
---

O roteador [MikroTik] permite tanto [exportar] quanto fazer _[backup]_ da sua configuração. É possível exportar toda a configuração ou parte dela para um arquivo de texto (um _script_), que pode ser útil para replicar a mesma configuração em outros roteadores, documentar a rede, comparar mudanças ao longo do tempo e diagnosticar problemas (quando você posta uma dúvida no [fórum do MikroTik], comumente te pedem esse _script_ para estudar sua configuração). Já o _backup_ é um arquivo binário, que permite recuperar completa e rapidamente a configuração do roteador em caso de falhas.

<!--more-->

{{< image src="/files/2025/11/mikrotik-hap-ac3.jpg" >}}

Eu sempre faço ambos ao mesmo tempo: exporto a configuração como _script_ e também faço _backup_ como arquivo binário, e guardo os dois arquivos juntos. O _script_ é útil para saber o que mudou na configuração de um dia pro outro, e o _backup_ é útil caso eu precise restaurar esse configuração.

## Fazendo backup da configuração

Para fazer _[backup]_ da configuração do MikroTik, no WinBox, vá em **Files**:

{{< image src="/files/2025/12/mikrotik-backup-01.png" >}}

A janela **File List** lista os arquivos e pastas na memória interna do MikroTik:

{{< image src="/files/2025/12/mikrotik-backup-02.png" >}}

Clique no botão **Backup**.

Todas as configurações da janela **Backup Config** são opcionais. Você pode definir um nome para o arquivo (**Name**), mas por padrão o arquivo é nomeado com a data e a hora do _backup_. Você também pode criptografar o _backup_ com uma senha, se quiser. Clique no botão **Backup Config**:

{{< image src="/files/2025/12/mikrotik-backup-03.png" >}}

Nesse exemplo, foi gerado um arquivo com o nome de `MikroTik-20251204-2101.backup`. Clique com o botão direito nesse arquivo e clique em **Download**:

{{< image src="/files/2025/12/mikrotik-backup-04.png" >}}

Indique onde salvar o arquivo no seu computador:

{{< image src="/files/2025/12/mikrotik-backup-05.png" >}}

Se você estiver usando o WinBox no [Linux] via [Wine], o mais prático é salvar na pasta **Documentos** e de lá mover para onde quiser.

## Exportando a configuração

Para [exportar] a configuração do MikroTik como um _script_, no **WinBox**, vá em **New Terminal**:

{{< image src="/files/2025/12/mikrotik-backup-script-01.png" >}}

O MikroTik é mesmo muito versátil: todas as configurações que podemos fazer pelo WinBox ou pela interface _web_, também podemos fazer pelo terminal.

No **Terminal**, digite `export file=backup` e tecle **Enter**:

{{< image src="/files/2025/12/mikrotik-backup-script-02.png" >}}

Vá em **Files** novamente e perceba que foi gerado um arquivo chamado `backup.rsc`:

{{< image src="/files/2025/12/mikrotik-backup-script-03.png" >}}

Clique com o botão direito nesse arquivo e clique em **Download** para baixá-lo para o seu computador.

Se quiser, você consegue abrir esse arquivo com um editor de texto e analisar a configuração do seu roteador:

{{< image src="/files/2025/12/mikrotik-backup-script-04.png" >}}

Se você usa algum controle de versões como o [Git], pode armazenar tanto o _backup_ (arquivo binário) quanto o _script_ (arquivo de texto) em um repositório privado do [GitHub], [GitLab] ou [Bitbucket] e atualizá-los sempre que fizer alguma modificação na configuração do MikroTik.

Por exemplo, a tela a seguir mostra o que mudou na configuração do roteador entre [restaurar a configuração de fábrica][mikrotik-reset] e [fazer a configuração inicial][MikroTik]:

{{< image src="/files/2025/12/mikrotik-gitk.png" >}}

[MikroTik]:             {{% ref "2020-07-20-primeiros-passos-com-o-mikrotik-hap-ac-roteador-profissional-para-a-rede-de-casa" %}}
[exportar]:             https://help.mikrotik.com/docs/spaces/ROS/pages/328155/Configuration+Management#ConfigurationManagement-ConfigurationExportandImport
[backup]:               https://help.mikrotik.com/docs/spaces/ROS/pages/40992852/Backup
[fórum do MikroTik]:    https://forum.mikrotik.com/
[Linux]:                https://www.vivaolinux.com.br/linux/
[Wine]:                 https://www.winehq.org/
[Git]:                  https://git-scm.com/
[GitHub]:               https://github.com/
[GitLab]:               https://gitlab.com/
[Bitbucket]:            https://bitbucket.org/
[mikrotik-reset]:       {{% ref "2025-11-30-mikrotik-como-restaurar-a-configuracao-de-fabrica" %}}
