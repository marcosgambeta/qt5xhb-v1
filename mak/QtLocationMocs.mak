$(QT5XHB_OBJ_DIR)/QGeoCodeReplySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoCodeReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoCodingManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoCodingManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoCodingManagerEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoCodingManagerEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRouteReplySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoRouteReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRoutingManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoRoutingManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRoutingManagerEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoRoutingManagerEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QPlaceManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceManagerEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QPlaceManagerEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceReplySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QPlaceReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
