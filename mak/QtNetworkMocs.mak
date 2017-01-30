$(QT5XHB_OBJ_DIR)/QAbstractSocketSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QAbstractSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDnsLookupSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDnsLookupSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLocalServerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QLocalServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLocalSocketSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QLocalSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkAccessManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QNetworkAccessManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkConfigurationManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QNetworkConfigurationManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkReplySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QNetworkReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QNetworkSessionSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QNetworkSessionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSslSocketSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSslSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTcpServerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QTcpServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
