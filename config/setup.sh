#!/bin/bash
yum install -y samba unzip sysv-rc-conf
echo "set root samba passwd:"
smbpasswd -a root
setsebool -P samba_export_all_rw 1

echo "[src]
        path = /var/www
        public = no
        browsable = yes
        writable = yes
        valid users = root
" >> /etc/samba/smb.conf 
service smb start
sysv-rc-conf smb on
