$(QT5XHB_OBJ_DIR)/QScriptEngineDebuggerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QScriptEngineDebuggerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
