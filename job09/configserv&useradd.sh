#!/bin/bash

INPUT=/home/serv/ftp/job09/FTP_Userlist.csv
IFS=','
i=1

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read Id Prenom Nom Mdp Role

do

Prenom=${Prenom//[[:blank:]]/}

test $i -eq 1 && ((i=i+1)) && continue

if [ $Role = "Admin" ]; then
	useradd $Prenom --password $Mdp
	usermod -aG sudo $Prenom
	mkdir /home/$Prenom
else
	useradd $Prenom --password $Mdp
	mkdir /home/$Prenom
fi

done < $INPUT

systemctl restart proftpd
