#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QWebChannelAbstractTransportSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebChannel/QWebChannelAbstractTransportSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebChannelSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtWebChannel/QWebChannelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
