#!/bin/bash

# Criar o diretório
mkdir -p /github/workspace/docs

# Copiar todos os arquivos para o diretório de trabalho
cp -r /github/workspace/* /github/workspace/docs/

# Exibe informações sobre diretórios
pwd
ls -la
ls -la /github/workspace/docs

# Instalar Bundler na versão 2.7
gem install bundler -v 2.7

# Entrar no diretório docs
cd /github/workspace/docs

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
