#!/bin/bash

# Criar o diretório
mkdir -p /github/workspace/docs

# Mover arquivos para o diretório
cp -r /github/workspace/* /github/workspace/docs/

# Exibe informações sobre diretórios
cd /github/workspace/docs
pwd
ls -la
ls -la /github/workspace

# Instalar Bundler na versão 2.4.22
gem install bundler -v 2.4.22

# Instalar as dependências do Jekyll
bundle install

# Verificar se a instalação do Bundler foi bem-sucedida
if [ $? -eq 0 ]; then
    echo "Bundler instalado com sucesso!"
else
    echo "Erro ao instalar o Bundler."
    exit 1  # Encerra o script com código de saída 1 em caso de erro
fi

# Exibir mensagem
echo "Olá, Mundo!"
