$(QT5XHB_OBJ_DIR)/QQuickWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QQuickWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
