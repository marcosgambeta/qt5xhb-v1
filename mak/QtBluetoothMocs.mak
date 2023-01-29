#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothDeviceDiscoveryAgentSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothLocalDeviceSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothLocalDeviceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothServerSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothServerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothServiceDiscoveryAgentSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothServiceDiscoveryAgentSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothSocketSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothSocketSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothTransferManagerSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothTransferManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothTransferReplySlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtBluetooth/QBluetoothTransferReplySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
