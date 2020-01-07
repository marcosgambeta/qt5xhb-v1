#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/Q3DBarsSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DBarsSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DCameraSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DCameraSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DInputHandlerSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DInputHandlerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DLightSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DLightSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DObjectSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DObjectSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DScatterSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DScatterSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DSceneSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DSceneSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DSurfaceSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DSurfaceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DThemeSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DThemeSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DAxisSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DGraphSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DGraphSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DInputHandlerSlotsMoc.cpp    : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DInputHandlerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DSeriesSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBar3DSeriesSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtDataVisualization/QBar3DSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBarDataProxySlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtDataVisualization/QBarDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCategory3DAxisSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCategory3DAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCustom3DItemSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCustom3DItemSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCustom3DLabelSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCustom3DLabelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCustom3DVolumeSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCustom3DVolumeSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHeightMapSurfaceDataProxySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDataVisualization/QHeightMapSurfaceDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemModelBarDataProxySlotsMoc.cpp     : $(QT5XHB_SRC_DIR)/QtDataVisualization/QItemModelBarDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemModelScatterDataProxySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDataVisualization/QItemModelScatterDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemModelSurfaceDataProxySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDataVisualization/QItemModelSurfaceDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLogValue3DAxisFormatterSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtDataVisualization/QLogValue3DAxisFormatterSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScatter3DSeriesSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtDataVisualization/QScatter3DSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScatterDataProxySlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtDataVisualization/QScatterDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSurface3DSeriesSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtDataVisualization/QSurface3DSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSurfaceDataProxySlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtDataVisualization/QSurfaceDataProxySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QValue3DAxisSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtDataVisualization/QValue3DAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
