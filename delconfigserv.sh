#!/bin/bash

echo "Attention, cette requête va complètement nettoyer votre machine. Voulez-vous continuer? (o/n)"

read answer

if [ $answer = "o" ]; then
apt --purge autoremove proftpd-*

else
exit 1

fi
