#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QWebEnginePageSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/QWebEnginePageSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebEngineViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/QWebEngineViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
