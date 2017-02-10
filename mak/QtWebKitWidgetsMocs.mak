$(QT5XHB_OBJ_DIR)/QGraphicsWebViewSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QGraphicsWebViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebFrameSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QWebFrameSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebPageSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QWebPageSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebViewSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/QWebViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
