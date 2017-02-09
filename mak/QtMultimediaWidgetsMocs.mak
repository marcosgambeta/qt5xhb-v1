$(QT5XHB_OBJ_DIR)/QGraphicsVideoItemSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/QGraphicsVideoItemSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWidgetSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/QVideoWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWidgetControlSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/QVideoWidgetControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
