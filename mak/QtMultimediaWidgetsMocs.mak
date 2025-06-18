#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QGraphicsVideoItemSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/QGraphicsVideoItemSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWidgetSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/QVideoWidgetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWidgetControlSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/QVideoWidgetControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
