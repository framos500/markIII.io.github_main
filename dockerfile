# Use a imagem oficial do Jekyll como base
FROM jekyll/builder:latest

# Configure o diretório de trabalho
WORKDIR /srv/jekyll

# Copie o conteúdo do diretório do projeto para o contêiner
COPY . .

# Instale as dependências
RUN bundle install

# Comando padrão para construir o site Jekyll
CMD ["jekyll", "build"]
