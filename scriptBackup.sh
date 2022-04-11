#!/bin/bash

#Diretorio de Backup
backup_path=" "
#Diretorio para onde o backup vai
external_storage=" "

# Formato do Arquivo
date_format=$(date "+%d-%m-%Y")
file_name_final="backup-Higor-$date_format.tar.gz"

#log
log_file="/var/log/daily-backup.log"

####################
# Inicio do Backup #
####################
if tar -czSpf "$external_storage/$file_name_final/$backup_path"; then
   printf "[$date_format] BACKUP SUCESS!" >> $log_file
else
   printf "[$date_format] Backup error" >> $log_file
fi




