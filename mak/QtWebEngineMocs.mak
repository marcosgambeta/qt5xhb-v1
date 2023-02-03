#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QQuickWebEngineProfileSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngine/QQuickWebEngineProfileSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQuickWebEngineScriptSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtWebEngine/QQuickWebEngineScriptSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
