#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QGeoCodeReplySlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtLocation/QGeoCodeReplySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoCodingManagerSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtLocation/QGeoCodingManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoCodingManagerEngineSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtLocation/QGeoCodingManagerEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRouteReplySlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtLocation/QGeoRouteReplySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRoutingManagerSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtLocation/QGeoRoutingManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRoutingManagerEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtLocation/QGeoRoutingManagerEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceManagerSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtLocation/QPlaceManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceManagerEngineSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtLocation/QPlaceManagerEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceReplySlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtLocation/QPlaceReplySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
