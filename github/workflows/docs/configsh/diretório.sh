#!/bin/bash

# Criar a estrutura de diretórios
mkdir -p /github/workspace/docs/config_html_css
mkdir -p /github/workspace/docs/configjson
mkdir -p /github/workspace/docs/configsh
mkdir -p /github/workspace/docs/configyaml

# Exibe informações sobre diretórios
pwd
ls -la
ls -la /github/workspace
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
