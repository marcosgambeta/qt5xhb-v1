#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QHelpContentModelSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtHelp/QHelpContentModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpContentWidgetSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtHelp/QHelpContentWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpEngineCoreSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtHelp/QHelpEngineCoreSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpIndexModelSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtHelp/QHelpIndexModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpIndexWidgetSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtHelp/QHelpIndexWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchEngineSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtHelp/QHelpSearchEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchQueryWidgetSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtHelp/QHelpSearchQueryWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchResultWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtHelp/QHelpSearchResultWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
