
.PHONY: all
all:
	@echo "done"

.PHONY: check
check:
	@echo "done"

.PHONY: install
install:
	install rdumpfs-rota $(DESTDIR)/usr/bin
	install rdumpfs-rota.conf $(DESTDIR)/etc
	install -d $(DESTDIR)/etc/cron.daily \
		$(DESTDIR)/etc/cron.weekly \
		$(DESTDIR)/etc/cron.monthly
	install rdumpfs-rota-daily.cron $(DESTDIR)/etc/cron.daily
	install rdumpfs-rota-weekly.cron $(DESTDIR)/etc/cron.weekly
	install rdumpfs-rota-monthly.cron $(DESTDIR)/etc/cron.monthly
