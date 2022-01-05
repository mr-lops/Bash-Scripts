#!/bin/bash
#
# Boas vindas e verificar como foi a inicialização do sistema
echo ""
echo -e "\e[4;30;42mBEM VINDO ${USER^^} \e[0m"
echo ""
echo -e "\e[4;30;42mSTATUS DO PROCESSO DE INICIALIZAÇÃO DO SISTEMA \e[0m"
echo -e "\e[91mATENÇÃO: Necessário Ter Permissão de Administrador Para vizualizar \e[0m"
sudo systemd-analyze
echo ""
