#!/bin/bash

INPUT= /home/ftp/job09/FTP_Userlist.csv
IFS=','
i=1

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read Id Prenom Nom Mdp Role

do

Prenom=${Prenom//[[:blank:]]/}

test $i -eq 1 && ((i=i+1)) && continue

deluser $Prenom
rm -r /home/$Prenom

done < $INPUT
