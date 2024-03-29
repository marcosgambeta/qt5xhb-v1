#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QDBusConnectionInterfaceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDBus/QDBusConnectionInterfaceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusPendingCallWatcherSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtDBus/QDBusPendingCallWatcherSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusServerSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtDBus/QDBusServerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDBusServiceWatcherSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtDBus/QDBusServiceWatcherSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
