
.PHONY: all
all:
	@echo "done"

.PHONY: check
check:
	@echo "done"

.PHONY: install
install:
	install -d $(DESTDIR)/etc \
		$(DESTDIR)/etc/cron.daily \
		$(DESTDIR)/etc/cron.weekly \
		$(DESTDIR)/etc/cron.monthly \
		$(DESTDIR)/etc/logrotate.d
	install --mode=0644 rdumpfs-rota.conf $(DESTDIR)/etc
	install --mode=0755 rdumpfs-rota-daily.cron $(DESTDIR)/etc/cron.daily/rdumpfs-rota-daily
	install --mode=0755 rdumpfs-rota-weekly.cron $(DESTDIR)/etc/cron.weekly/rdumpfs-rota-weekly
	install --mode=0755 rdumpfs-rota-monthly.cron $(DESTDIR)/etc/cron.monthly/rdumpfs-rota-monthly
	install --mode=0644 rdumpfs-rota.logrotate $(DESTDIR)/etc/logrotate.d/rdumpfs-rota
