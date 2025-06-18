#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QWebChannelAbstractTransportSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebChannel/QWebChannelAbstractTransportSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebChannelSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtWebChannel/QWebChannelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
