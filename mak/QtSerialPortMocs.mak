$(QT5XHB_OBJ_DIR)/QSerialPortSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSerialPort/QSerialPortSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
