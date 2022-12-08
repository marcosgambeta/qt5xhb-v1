#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QDBusConnectionInterfaceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDBus/QDBusConnectionInterfaceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusPendingCallWatcherSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtDBus/QDBusPendingCallWatcherSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusServerSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtDBus/QDBusServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusServiceWatcherSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtDBus/QDBusServiceWatcherSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
