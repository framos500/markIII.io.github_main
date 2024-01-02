# Use a imagem base com Ruby e Jekyll pré-instalados
FROM jekyll/builder:latest

# Defina o diretório de trabalho
WORKDIR /srv/jekyll

# Copie o conteúdo do diretório atual (onde o Dockerfile está localizado) para o diretório de trabalho no contêiner
COPY . .

# Execute o script bash ao iniciar o contêiner
CMD ["./build.sh"]
