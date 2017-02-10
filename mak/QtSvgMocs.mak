$(QT5XHB_OBJ_DIR)/QSvgRendererSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSvg/QSvgRendererSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
