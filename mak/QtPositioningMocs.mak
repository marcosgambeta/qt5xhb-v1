$(QT5XHB_OBJ_DIR)/QGeoAreaMonitorSourceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoAreaMonitorSourceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoPositionInfoSourceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoPositionInfoSourceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoSatelliteInfoSourceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QGeoSatelliteInfoSourceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
