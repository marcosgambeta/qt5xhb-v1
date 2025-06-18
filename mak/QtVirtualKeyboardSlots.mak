#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QVirtualKeyboardAbstractInputMethodSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethodSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVirtualKeyboardInputContextSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtVirtualKeyboard/QVirtualKeyboardInputContextSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVirtualKeyboardInputEngineSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtVirtualKeyboard/QVirtualKeyboardInputEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVirtualKeyboardSelectionListModelSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtVirtualKeyboard/QVirtualKeyboardSelectionListModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVirtualKeyboardTraceSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtVirtualKeyboard/QVirtualKeyboardTraceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QtVirtualKeyboardVersionSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtVirtualKeyboard/QtVirtualKeyboardVersionSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
