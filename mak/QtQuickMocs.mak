$(QT5XHB_OBJ_DIR)/QQuickPaintedItemSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQuickPaintedItemSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQuickViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQuickViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQuickWindowSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQuickWindowSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
