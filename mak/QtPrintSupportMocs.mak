$(QT5XHB_OBJ_DIR)/QPrintDialogSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QPrintDialogSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPrintPreviewDialogSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QPrintPreviewDialogSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPrintPreviewWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QPrintPreviewWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
