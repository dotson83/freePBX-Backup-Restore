# freePBX-Backup-Restore
Simple bash scripts to backup and restore a freePBX system

This will backup all relevent freePBX directories and files plus a full backup of all databases. If you have other databaes not part of freePBX you will need to modify the sql commands to exclude those. 

To use this just make each script executable and run them. The restore script assumes you're in the same directory as the files the backup script generated and nothing else with that name will exist.

I created these because the backup and restore module kept resulting in failures on restore.

Once this is done you will still need to active and adjust NAT/ip settings assuming they are not the same.
