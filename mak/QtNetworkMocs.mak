#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QAbstractSocketSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtNetwork/QAbstractSocketSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDnsLookupSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtNetwork/QDnsLookupSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLocalServerSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtNetwork/QLocalServerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLocalSocketSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtNetwork/QLocalSocketSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkAccessManagerSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkAccessManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkConfigurationManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkConfigurationManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkReplySlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkReplySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkSessionSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtNetwork/QNetworkSessionSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSslSocketSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtNetwork/QSslSocketSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTcpServerSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtNetwork/QTcpServerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
