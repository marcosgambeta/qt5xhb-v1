#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QSerialPortSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSerialPort/QSerialPortSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
