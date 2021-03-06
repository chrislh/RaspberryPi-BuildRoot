#############################################################
#
# latencytop
#
#############################################################

LATENCYTOP_VERSION = 0.5
LATENCYTOP_SITE = http://www.latencytop.org/download/
LATENCYTOP_DEPENDENCIES = libglib2 ncurses

# NOTE: GTK is heavy weight, we intentionally build the text (ncurses)
# version only
define LATENCYTOP_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) HAS_GTK_GUI=
endef

define LATENCYTOP_INSTALL_TARGET_CMDS
	$(MAKE) install -C $(@D) DESTDIR=$(TARGET_DIR) HAS_GTK_GUI=
endef

$(eval $(call GENTARGETS))
