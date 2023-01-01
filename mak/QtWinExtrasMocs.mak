#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QWinTaskbarProgressSlotsMoc.cpp     : $(QT5XHB_SRC_DIR)/QtWinExtras/QWinTaskbarProgressSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWinThumbnailToolButtonSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWinExtras/QWinThumbnailToolButtonSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
