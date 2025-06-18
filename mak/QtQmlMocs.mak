#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QQmlApplicationEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtQml/QQmlApplicationEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlComponentSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtQml/QQmlComponentSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlEngineSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtQml/QQmlEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlExpressionSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtQml/QQmlExpressionSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlPropertyMapSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtQml/QQmlPropertyMapSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
