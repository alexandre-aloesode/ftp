#!/bin/bash

#######################1ERE Partie, création de l'archive#################################
echo -e "aze\n" | su -
mkdir /backups
mkdir /backups/archive
mkdir /backups/proftpdConfig-UsersFiles
mkdir /backups/proftpdConfig-UsersFiles/proftpdconfig
mkdir /backups/proftpdConfig-UsersFiles/UsersFiles
cp /home -r /backups/proftpdConfig-UsersFiles/UsersFiles
cp /etc/proftpd/proftpd.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/proftpd.conf
cp /etc/proftpd/tls.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/tls.conf
cp /etc/proftpd/modules.conf /backups/proftpdConfig-UsersFiles/proftpdconfig/modules.conf
tar zcvf /backups/archive/backup_$(date +'%d-%B-%Y-%R').tar.gz /backups/proftpdConfig-UsersFiles

#######################2EME Partie, envoi de l'archive####################################
#Nécessite au préalable d'installer et configurer lftp
#apt install lftp
#nano /etc/lftp.conf
#Rajouter le texte suivant au bas du fichier
#set ssl:verify-certificate no
###########################################################################################
lftp -c "open -u serv2,Jesuislemdp280695 192.168.1.57; put -O /backups_serv/ /backups/archive/backup_$(date +'%d-%B-%Y-%R').tar.gz" 
exit
rm -rf /backups
