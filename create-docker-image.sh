#!/bin/bash

# Cria a imagem a partir do dockerfile
docker build \
  -f build.Dockerfile `# Informa o filename do dockerfile` \
  -t naming-server `#Cria uma tag pra imagem criada com o nome informado` \
  . `# Informa o path do dockerfile`

# Roda a imagem criada no passo acima (se a imagem já existir, não precisa do comando acima, o docker build)
docker run \
  -d `# Roda o processo em segundo plano e mostra apenas o id do container na tela` \
  -p 8761:8761 `# Expõe a porta do host (antes dos dois pontos) a partir da porta do container (depois dos dois pontos)` \
  --name naming-server `# Cria uma tag pro container` \
  naming-server `# Nome da imagem que será usada na inicialização do container`
