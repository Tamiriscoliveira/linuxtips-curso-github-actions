#!/bin/bash

# Nome do ficheiro de saída
OUTPUT="resultado.txt"

# Gerar conteúdo (exemplo com data e hora)
echo "Relatório gerado em $(date)" > $OUTPUT
echo "==============================" >> $OUTPUT
echo "" >> $OUTPUT

# Exemplo: listar ficheiros do repositório
echo "Ficheiros no repositório:" >> $OUTPUT
ls -lh >> $OUTPUT
echo "" >> $OUTPUT

# Exemplo: mostrar uso de disco
echo "Uso de disco:" >> $OUTPUT
df -h >> $OUTPUT

# Mensagem final
echo "" >> $OUTPUT
echo "Script finalizado com sucesso!" >> $OUTPUT
