$(QT5XHB_OBJ_DIR)/QQmlComponentSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQmlComponentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQmlEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlExpressionSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQmlExpressionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlPropertyMapSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQmlPropertyMapSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
