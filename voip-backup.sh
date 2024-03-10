#!/bin/bash

# Backup FreePBX configuration files and directories
tar -czvf freepbx_backup_$(date +%Y%m%d_%H%M%S).tar.gz \
    /etc/asterisk \
    /etc/freepbx.conf \
    /var/www/html/admin \
    /var/lib/asterisk \
    /var/spool/asterisk \
    /etc/postfix \
    /etc/httpd \
    /etc/zabbix \
    /etc/pki

# Backup FreePBX MySQL databases 
mysqldump -u root --all-databases --add-drop-database --add-drop-table | gzip > all_databases_backup_$(date +%Y%m%d_%H%M%S).sql.gz

echo "Backup completed successfully!"
