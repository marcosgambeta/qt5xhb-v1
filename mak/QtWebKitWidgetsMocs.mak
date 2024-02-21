#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QGraphicsWebViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QGraphicsWebViewSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebFrameSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QWebFrameSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebPageSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QWebPageSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebViewSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QWebViewSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
