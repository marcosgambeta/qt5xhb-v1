$(QT5XHB_OBJ_DIR)/QWebEnginePageSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/QWebEnginePageSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebEngineViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/QWebEngineViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
