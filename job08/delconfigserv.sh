#!/bin/bash

echo "Attention, cette requête va complètement nettoyer votre machine. Voulez-vous continuer? (o/n)"

read answer

if [ $answer = "o" ]; then
systemctl stop proftpd
echo -e "o\n" | apt --purge autoremove proftpd-*

else
exit 1

fi
