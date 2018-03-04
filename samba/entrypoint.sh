#!/bin/bash

for SERVICE in smbd nmbd winbind webmin
do
  service ${SERVICE} start
done
tail -f /var/log/samba/log.smbd