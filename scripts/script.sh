#!/usr/bin/env bash
# script.sh

echo "=== Resultado do Script ===" > resultado.csv
echo "Data de execução: $(date '+%Y-%m-%d %H:%M:%S')" >> resultado.csv
echo "Hostname: $(hostname)" >> resultado.csv
echo "Usuário atual: $(whoami)" >> resultado.csv
echo "Diretório atual: $(pwd)" >> resultado.csv
echo "-----------------------------" >> resultado.csv

echo "Arquivo resultado.txt criado com sucesso!"
