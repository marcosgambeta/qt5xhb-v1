$(QT5XHB_OBJ_DIR)/QSvgRendererSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSvgRendererSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
