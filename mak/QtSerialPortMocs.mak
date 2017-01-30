$(QT5XHB_OBJ_DIR)/QSerialPortSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSerialPortSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
