
#!/bin/bash

# Stop FreePBX and Apache
echo "Stopping FreePBX and Apache..."
fwconsole stop
systemctl stop httpd

# Restore SQL backups
for sql_file in *.sql.gz; do
    gunzip -c "$sql_file" | mysql -u root
done
systemctl restart mariadb
# Restore tarball backups
for tar_file in *.tar.gz; do
    tar -xzvf "$tar_file" -C /
done

# Start FreePBX and Apache
echo "Starting FreePBX and Apache..."
fwconsole start
systemctl start httpd

echo "Restore completed successfully!"