#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QGamepadKeyNavigationSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtGamepad/QGamepadKeyNavigationSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGamepadManagerSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtGamepad/QGamepadManagerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGamepadSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGamepad/QGamepadSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
