$(QT5XHB_OBJ_DIR)/QSqlDriverSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSqlDriverSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSqlTableModelSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QSqlTableModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
