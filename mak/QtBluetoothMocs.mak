$(QT5XHB_OBJ_DIR)/QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothDeviceDiscoveryAgentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothLocalDeviceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothLocalDeviceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothServerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothServerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothServiceDiscoveryAgentSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothServiceDiscoveryAgentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothSocketSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothSocketSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothTransferManagerSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothTransferManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBluetoothTransferReplySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QBluetoothTransferReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
