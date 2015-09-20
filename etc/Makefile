
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
		$(DESTDIR)/etc/cron.monthly
	install --mode=0644 rdumpfs-rota.conf $(DESTDIR)/etc
	install --mode=0644 rdumpfs-rota-daily.cron $(DESTDIR)/etc/cron.daily
	install --mode=0644 rdumpfs-rota-weekly.cron $(DESTDIR)/etc/cron.weekly
	install --mode=0644 rdumpfs-rota-monthly.cron $(DESTDIR)/etc/cron.monthly
