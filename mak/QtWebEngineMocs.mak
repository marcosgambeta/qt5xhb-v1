#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QQuickWebEngineProfileSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtWebEngine/QQuickWebEngineProfileSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QQuickWebEngineScriptSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtWebEngine/QQuickWebEngineScriptSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
