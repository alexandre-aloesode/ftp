#!/bin/bash

#######################1ERE Partie, création de l'archive#################################
echo -e "aze\n" | su -
mkdir /backups/proftpdConfig-UsersFiles
mkdir /backups/proftpdConfig-UsersFiles/proftpdconfig
mkdir /backups/proftpdConfig-UsersFiles/UsersFiles
cp /home -r /backups/proftpdConfig-UsersFiles/UsersFiles
cp /etc/proftpd/proftpd.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/proftpd.conf
cp /etc/proftpd/tls.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/tls.conf
cp /etc/proftpd/modules.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/modules.conf
tar zcvf /backups/archive/backup_$(date +'%d-%B-%Y-%R').tar.gz /backups/proftpdConfig-UsersFiles
rm -rf /backups/proftpdConfig-UsersFiles

#######################2EME Partie, envoi de l'archive####################################

echo -e "Jesuislemdp280695" | lftp serv2@192.168.1.57
cd /backups_serv
put /backups/archive/backup_$(date +'%d-%B-%Y-%R').tar.gz
exit
