#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QQuickPaintedItemSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtQuick/QQuickPaintedItemSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQuickViewSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtQuick/QQuickViewSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQuickWindowSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtQuick/QQuickWindowSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
