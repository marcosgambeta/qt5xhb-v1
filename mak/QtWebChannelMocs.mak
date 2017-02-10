$(QT5XHB_OBJ_DIR)/QWebChannelAbstractTransportSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebChannel/QWebChannelAbstractTransportSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWebChannelSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtWebChannel/QWebChannelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
