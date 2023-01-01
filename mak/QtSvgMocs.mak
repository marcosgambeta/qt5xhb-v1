#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QSvgRendererSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtSvg/QSvgRendererSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
