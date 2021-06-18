---
date: 2021-04-09 11:00:00 GMT-3
image: /files/2021/04/windows-vpn-08.jpg
layout: post
title: 'MikroTik: como conectar à VPN a partir do Windows'
excerpt: 'Se você usa Windows e deseja conectar seu computador à VPN do roteador MikroTik que configuramos no post anterior, siga as instruções desse texto.'
---

Se você usa [Windows] e deseja conectar seu computador à [VPN do roteador MikroTik][vpn] que configuramos no [_post_ anterior][vpn], siga as instruções a seguir.

Abra o **menu Iniciar** e clique em **Configurações**:

{% include image.html src='/files/2021/04/windows-vpn-01.jpg' %}

Entre na categoria **Rede e Internet**.

Na tela seguinte, à esquerda, selecione **VPN**. À direita, clique em **Adicionar uma conexão VPN**:

{% include image.html src='/files/2021/04/windows-vpn-02.jpg' %}

{% include ad1.html %}

Preencha as informações sobre a VPN de acordo com as orientações a seguir, mas também de acordo com as orientações de quem configurou a VPN (os exemplos se referem ao tutorial sobre [como configurar VPN no roteador MikroTik][vpn]):

{% include image.html src='/files/2021/04/windows-vpn-03.jpg' %}

- Em **Provedor VPN**, você pode deixar **Windows (interno)**, que é a opção padrão
- Em **Nome da conexão**, forneça um nome que te permita identificar a VPN, pode ser o nome que você quiser (exemplo: `VPN de Teste`)
- Em **Nome ou endereço do servidor**, indique o endereço IP (exemplo: `179.216.177.166`) ou nome e domínio DNS (exemplo: `6bxxxxxxxxc2.sn.mynetname.net`) do servidor da VPN (nesse caso, do roteador MikroTik)
- Em **Tipo de VPN**, selecione **L2TP/IPsec com chave pré-compartilhada**
- Informe a **Chave pré-compartilhada** (exemplo: `12345678`)
- Em **Tipo de informações de entrada**, você pode deixar **Nome de usuário e senha**, que é a opção padrão
- Informe seu **Nome de usuário** para conectar à VPN (exemplo: `teste`)
- Informe sua **Senha** para conectar à VPN (exemplo: `testando`)

Quando terminar, clique em **Salvar**.

{% include ad2.html %}

De volta às **Configurações**, clique na conexão recém-criada e depois em **Conectar**:

{% include image.html src='/files/2021/04/windows-vpn-04.jpg' %}

Após alguns segundos ou minutos, o Windows mostra que está **Conectado** à VPN:

{% include image.html src='/files/2021/04/windows-vpn-05.jpg' %}

Você pode testar a conexão com o comando **ping**, "fazendo um pingue" para algum endereço na rede local da VPN:

{% include image.html src='/files/2021/04/windows-vpn-06.jpg' %}

Se souber de algum servidor _web_ na rede local da VPN, você também pode testar a conexão abrindo o navegador e acessando esse servidor. Nesse exemplo, eu testo a conexão com a VPN acessando a interface _web_ da minha impressora:

{% include image.html src='/files/2021/04/windows-vpn-07.jpg' %}

Quando não precisar mais usar a VPN, você pode voltar às **Configurações** e clicar no botão **Desconectar**.

Uma vez configurada a VPN, outra forma de conectar e desconectar é usando o ícone de rede próximo do relógio:

{% include image.html src='/files/2021/04/windows-vpn-08.jpg' %}

[windows]:  https://www.microsoft.com/pt-br/windows/
[vpn]:      {% post_url 2021-04-09-mikrotik-como-criar-uma-vpn-com-l2tp-e-ipsec %}
