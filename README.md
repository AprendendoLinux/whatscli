<h1>Enviando mensagens no WhatsApp com o Docker</h1>

**Prezados colegas,**

Saudações pinguianas para todos!

Para facilitar a vida de muita gente, criei uma imagem docker para enviar mensagens de WhatsApp pela linha de comando do Linux.

Partirei do do suposto que você já tenha o docker instalado e configurado, mas caso não tenha, instale-o com a ajuda da [**documentação oficial**](https://docs.docker.com/engine/install/).

<h3>Subindo o contêiner:</h3>

~~~bash
docker run -id --name='whatsapp' \
    --hostname='whatsapp' \
    -v /srv/whatsapp:/home/node/whatsapp \
    --restart=always aprendendolinux/whatscli
~~~

Também é possível iniciar a partir de um arquivo **docker-composer.yml**. Segue o conteúdo abaixo:
~~~~composer
version: "3.7"

services:
  whatsapp:
    container_name: whatsapp
    hostname: whatsapp
    image: aprendendolinux/whatscli
    restart: always
    stdin_open: true
    tty: true
    volumes:
      - /srv/whatsapp:/home/node/whatsapp
~~~~

Agora o contêiner está pronto para ser utilizado.

<h2>Modo de uso:</h2>

Primeiro,  precisamos logar no WhatsApp CLI. Faça o comando abaixo para obter o **QRCode**:

~~~bash
docker exec -it whatsapp npx mudslide login
~~~

Você verá uma tela como essa:

![](https://temporario.aprendendolinux.com/pic_docker_hub/WhatsLogin.png "Tela de Login no WhatsApp Web")

Faça o login como se estivesse fazendo no WhatsApp Web, normalmente.

Agora, para mandar mensagens, faça o comando:

~~~bash
docker exec -it whatsapp npx mudslide send 5521999999999 'Mensagem de Teste!'
~~~

Para deslogar do WhatsApp, faça o comando abaixo:

~~~bash
docker exec -it whatsapp npx mudslide logout
~~~

Pra quem tiver a curiosidade de como foi construído esse **Dockerfile**, segue o [**link do projeto**](https://docs.docker.com/engine/install/).

Isso é tudo, espero que vocês tenham gostado!

Para suporte comercial, entre em contato por [e-mail](mailto:henrique@henrique.tec.br "henrique@henrique.tec.br"), [telegram](https://t.me/HenriqueFagundes "@HenriqueFagundes") ou [whatsapp](https://web.whatsapp.com/send?phone=5521981176211 "Henrique Fagundes").

<h4>Acesse meu site:</h4>

<https://www.henrique.tec.br>
