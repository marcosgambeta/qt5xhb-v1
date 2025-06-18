#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QWebSocketSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtWebSockets/QWebSocketSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebSocketServerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebSockets/QWebSocketServerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
