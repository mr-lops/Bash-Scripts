#!/bin/bash
#
# Backup de arquivos ou pastas

echo ""
echo "Digite o caminho do arquivo ou pasta que deseja realizar backup:"
read CAMINHO
if [ -e $CAMINHO ]; then 
	tar -czf Backup.tar.gz $CAMINHO
	echo ""
	echo "BACKUP REALIZADO!"
	echo "Pode ser encontrado em $PWD" 
else 
	echo 'ARQUIVO OU DIRETORIO NÃO ENCONTRADO!'
fi
echo ""
