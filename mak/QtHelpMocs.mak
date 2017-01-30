$(QT5XHB_OBJ_DIR)/QHelpContentModelSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpContentModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpContentWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpContentWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpEngineCoreSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpEngineCoreSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpIndexModelSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpIndexModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpIndexWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpIndexWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpSearchEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchQueryWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpSearchQueryWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHelpSearchResultWidgetSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QHelpSearchResultWidgetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
