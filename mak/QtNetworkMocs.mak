#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractSocketSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtNetwork/QAbstractSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDnsLookupSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtNetwork/QDnsLookupSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLocalServerSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtNetwork/QLocalServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLocalSocketSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtNetwork/QLocalSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkAccessManagerSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkAccessManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkConfigurationManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkConfigurationManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkReplySlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkSessionSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkSessionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSslSocketSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtNetwork/QSslSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTcpServerSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtNetwork/QTcpServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
