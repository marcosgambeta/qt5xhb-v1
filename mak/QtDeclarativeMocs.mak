#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QDeclarativeComponentSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeComponentSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeEngineSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeExpressionSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeExpressionSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativePropertyMapSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativePropertyMapSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeViewSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeViewSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
