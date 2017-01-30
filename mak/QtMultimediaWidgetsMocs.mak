$(QT5XHB_OBJ_DIR)/QGraphicsVideoItemSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGraphicsVideoItemSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QVideoWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWidgetControlSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QVideoWidgetControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
