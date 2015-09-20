
.PHONY: all
all:
	@echo "done"

.PHONY: check
check:
	@echo "done"

SUBDIRS=\
	bin \
	etc \
	man

.PHONY: install
install:
	for i in $(SUBDIRS) ; do $(MAKE) $(MAKEOPTS) -C $$i install || exit 1; done
