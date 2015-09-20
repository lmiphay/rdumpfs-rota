# rdumpfs-rota

rdumpfs-rota is a driver program for rdumpfs to help automate daily/weekly/monthly
backups.

Starting off:
```
rdumpfs-rota init daily
rdumpfs-rota init weekly
rdumpfs-rota init monthly

rdumpfs-rota -f rdumpfs daily
rdumpfs-rota -f rdumpfs weekly
rdumpfs-rota -f rdumpfs monthly
```

And then afterwards, periodically:
```
rdumpfs-rota rdumpfs daily
rdumpfs-rota rdumpfs weekly
rdumpfs-rota rdumpfs monthly
```