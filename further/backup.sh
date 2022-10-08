#!/bin/bash

#######################1ERE Partie, création de l'archive#################################
mkdir /backups
mkdir /backups/proftpdConfig-UsersFiles
mkdir /backups/proftpdConfig-UsersFiles/proftpdconfig
mkdir /backups/proftpdConfig-UsersFiles/UsersFiles
cp /home -r /backups/proftpdConfig-UsersFiles/UsersFiles
cp /etc/proftpd/proftpd.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/proftpd.conf
cp /etc/proftpd/tls.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/tls.conf
cp /etc/proftpd/modules.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/modules.conf
tar zcvf /backups/archive/backup_$(date +'%d-%B-%Y-%R').tar.gz /backups/proftpdConfig-UsersFiles

#######################2EME Partie, envoi de l'archive####################################

lftp -c "open -u serv2,Jesuislemdp280695 192.168.1.57; put -O /backups_serv/ /backups/archive/backup_$(date +'%d-%B-%Y-%R').tar.gz" 
exit
rm -rf /backups
