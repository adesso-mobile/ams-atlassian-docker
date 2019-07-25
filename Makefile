SUBDIRS := $(wildcard */.)

.PHONY: upload_all
upload_all: $(SUBDIRS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ upload
