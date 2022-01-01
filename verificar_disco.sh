
#!/bin/bash
# Verificar tamanho do disco

df -H | grep -vE '^Filesystem|tmpfs|loop|cdrom|udev|Disp.' | awk '{ print "Uso: " $5 " ------  Sistema de Arquivos: " $1 " ------ Montado em: " $6 }' | while read output;
do
  echo $output
  tam_usado=$(echo $output | awk '{ print $2}' | cut -d'%' -f1  )
  particao=$(echo $output | awk '{ print $7 }' )
  if [ $tam_usado -ge 90 ]; then
    echo "ATENÇÂO: Disco quase cheio em $particao($tam_usado%) na maquina $(hostname) na data $(date)"
# | mail -s "ALERTA DE DISCO QUASE CHEIO EM $(hostname)" pinov32612@saturdata.com
  fi
done
