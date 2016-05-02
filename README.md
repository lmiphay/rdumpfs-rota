#### rdumpfs-rota

rdumpfs-rota is a driver program for [rdumpfs](https://github.com/chneukirchen/rdumpfs) to help automate daily/weekly/monthly
backups.

Both local and remote backup targets are supported.

#### Quickstart
1. Configure the backup by editing /etc/rdumpfs-rota.conf
 1. comment out the REMOTESERVER setting if you want to disable remote backups
 2. comment out the LOCALDEST setting if you want to disable local backups
2. Create destination directories: rdumpfs-rota init <rota-name> (rota-name is one or daily, weekly or monthly)
3. Create initial dump (pass -f to rdumpfs to force creation of the first dump)
4. Arrange periodic backups to be made via the cron entries (enable/disable in: /etc/cron.*/rdumpfs-rota-*.cron)

#### Creating Destination Directories
Creating destination directories for the default rota's:
```
rdumpfs-rota init daily
rdumpfs-rota init weekly
rdumpfs-rota init monthly
```

#### Creating the First Dump
Remote backup: creating the first dump for each of the default rota's :
```
rdumpfs-rota -f rdumpfs daily
rdumpfs-rota -f rdumpfs weekly
rdumpfs-rota -f rdumpfs monthly
```
Local backup: creating the first dump for each of the default rota's :
```
rdumpfs-rota -f ldumpfs daily
rdumpfs-rota -f ldumpfs weekly
rdumpfs-rota -f ldumpfs monthly
```
# Arrange for Periodic Backups to be made
For example to run remote backsup, arrange for one or more of these commands to run periodically from cron:
```
rdumpfs-rota rdumpfs daily
rdumpfs-rota rdumpfs weekly
rdumpfs-rota rdumpfs monthly
```

