$(QT5XHB_OBJ_DIR)/QAccelerometerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QAccelerometerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLightSensorSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QLightSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMagnetometerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QMagnetometerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRotationSensorSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QRotationSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSensorGestureSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSensorGestureManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSensorGestureRecognizerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSensorGestureRecognizerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTapSensorSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QTapSensorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
