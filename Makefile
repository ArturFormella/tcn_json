# contrib/tcn_json/Makefile

MODULES = tcn_json

EXTENSION = tcn_json
DATA = tcn_json--1.1.sql
PGFILEDESC = "tcn_json - trigger function notifying listeners"

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/tcn_json
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
