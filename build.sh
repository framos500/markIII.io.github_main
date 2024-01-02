#!/bin/bash

# Se necessário, adicione comandos adicionais aqui antes da construção do Jekyll

# Construa o site Jekyll
bundle exec jekyll build

# Se necessário, adicione comandos adicionais aqui após a construção do Jekyll

chmod +x build.sh

docker build -t my-jekyll-image .
docker run -it --rm my-jekyll-image
