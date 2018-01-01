#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAxBaseSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/ActiveQt/QAxBaseSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAxObjectSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/ActiveQt/QAxObjectSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAxScriptSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/ActiveQt/QAxScriptSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAxWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/ActiveQt/QAxWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
