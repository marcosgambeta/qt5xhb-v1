$(QT5XHB_OBJ_DIR)/QQmlApplicationEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtQml/QQmlApplicationEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlComponentSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtQml/QQmlComponentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlEngineSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtQml/QQmlEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlExpressionSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtQml/QQmlExpressionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQmlPropertyMapSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtQml/QQmlPropertyMapSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
