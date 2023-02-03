#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAccelerometerSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtSensors/QAccelerometerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLightSensorSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtSensors/QLightSensorSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMagnetometerSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtSensors/QMagnetometerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRotationSensorSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtSensors/QRotationSensorSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtSensors/QSensorSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtSensors/QSensorGestureSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureManagerSlotsMoc.cpp    : $(QT5XHB_SRC_DIR)/QtSensors/QSensorGestureManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureRecognizerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSensors/QSensorGestureRecognizerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTapSensorSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtSensors/QTapSensorSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
