#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QWebEnginePageSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/QWebEnginePageSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebEngineViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/QWebEngineViewSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
