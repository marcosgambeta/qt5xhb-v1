#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QDesignerFormWindowManagerInterfaceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDesigner/QDesignerFormWindowManagerInterfaceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDesignerPropertyEditorInterfaceSlotsMoc.cpp    : $(QT5XHB_SRC_DIR)/QtDesigner/QDesignerPropertyEditorInterfaceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
