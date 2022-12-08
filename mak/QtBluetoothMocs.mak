#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothDeviceDiscoveryAgentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothLocalDeviceSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothLocalDeviceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothServerSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothServiceDiscoveryAgentSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothServiceDiscoveryAgentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothSocketSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothTransferManagerSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothTransferManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothTransferReplySlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothTransferReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
