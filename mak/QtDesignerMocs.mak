$(QT5XHB_OBJ_DIR)/QDesignerFormWindowManagerInterfaceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDesignerFormWindowManagerInterfaceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDesignerPropertyEditorInterfaceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QDesignerPropertyEditorInterfaceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
