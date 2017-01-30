$(QT5XHB_OBJ_DIR)/QScriptEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QScriptEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
