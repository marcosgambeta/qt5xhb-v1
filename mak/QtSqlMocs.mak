#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QSqlDriverSlotsMoc.cpp     : $(QT5XHB_SRC_DIR)/QtSql/QSqlDriverSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSqlTableModelSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSql/QSqlTableModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
