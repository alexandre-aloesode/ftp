#!/bin/bash

mkdir /backups
mkdir /backups/SystemConfigUsersFiles
mkdir /backups/home
cp /home/ /backups/home
cp /etc/proftpd/proftpd.conf /backups/proftpd.conf
cp /etc/proftpd/tls.conf /backups/tls.conf
cp /etc/proftpd/modules.conf /backups/modules.conf
tar zcvf /backups/SystemConfigUsersFiles/backup.tar.gz /backups/
