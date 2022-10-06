#!/bin/bash

echo -e "FR\nFRANCE\nMarseille\nPlateforme\nPT\moi\ntoto@gmail.com" | openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
