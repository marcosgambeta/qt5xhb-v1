#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HUiLoaderMoc.cpp : $(QT5XHB_SRC_DIR)/QtUiTools/HUiLoader.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
