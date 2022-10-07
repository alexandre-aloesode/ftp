#!/bin/bash

mkdir /backups/
mkdir /backups/SystemConfigUsersFiles
cp /home /backups/SystemConfigUsersFiles
cp /etc/proftpd/proftpd.conf /backups/SystemConfigUsersFiles
cp /etc/proftpd/tls.conf /backups/SystemConfigUsersFiles
cp /etc/proftpd/modules.conf /backups/SystemConfigUsersFiles
tar zcvf /backups/SystemConfigUsersFiles/backup.tar.gz /backups/SystemConfigUsersFiles
