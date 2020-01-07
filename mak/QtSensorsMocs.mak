#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAccelerometerSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtSensors/QAccelerometerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLightSensorSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtSensors/QLightSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMagnetometerSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtSensors/QMagnetometerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRotationSensorSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtSensors/QRotationSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtSensors/QSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtSensors/QSensorGestureSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureManagerSlotsMoc.cpp    : $(QT5XHB_SRC_DIR)/QtSensors/QSensorGestureManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureRecognizerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSensors/QSensorGestureRecognizerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTapSensorSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtSensors/QTapSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
