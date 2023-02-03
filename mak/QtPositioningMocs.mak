#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QGeoAreaMonitorSourceSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtPositioning/QGeoAreaMonitorSourceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoPositionInfoSourceSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtPositioning/QGeoPositionInfoSourceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoSatelliteInfoSourceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtPositioning/QGeoSatelliteInfoSourceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
