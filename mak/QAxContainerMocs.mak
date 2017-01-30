$(QT5XHB_OBJ_DIR)/QAxBaseSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QAxBaseSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAxObjectSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QAxObjectSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAxScriptSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QAxScriptSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAxWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QAxWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
