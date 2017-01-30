$(QT5XHB_OBJ_DIR)/QDBusConnectionInterfaceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDBusConnectionInterfaceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusPendingCallWatcherSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDBusPendingCallWatcherSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusServerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDBusServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusServiceWatcherSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDBusServiceWatcherSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
