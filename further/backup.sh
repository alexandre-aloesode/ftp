#!/bin/bash

mkdir /backups/
mkdir /backups/SystemConfigUsersFiles
cp /home /backups/SystemConfigUsersFiles
cp /etc/proftpd/proftpd.conf /backups
cp /etc/proftpd/tls.conf /backups
cp /etc/proftpd/modules.conf /backups
tar zcvf /backups/SystemConfigUsersFiles/backup.tar.gz /backups/
