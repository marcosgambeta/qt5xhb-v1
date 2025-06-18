#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QHelpContentModelSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtHelp/QHelpContentModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpContentWidgetSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtHelp/QHelpContentWidgetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpEngineCoreSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtHelp/QHelpEngineCoreSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpIndexModelSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtHelp/QHelpIndexModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpIndexWidgetSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtHelp/QHelpIndexWidgetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchEngineSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtHelp/QHelpSearchEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchQueryWidgetSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtHelp/QHelpSearchQueryWidgetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchResultWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtHelp/QHelpSearchResultWidgetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
