$(QT5XHB_OBJ_DIR)/QScriptEngineDebuggerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtScriptTools/QScriptEngineDebuggerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
