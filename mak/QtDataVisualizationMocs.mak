#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/Q3DBarsSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DBarsSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DCameraSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DCameraSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DInputHandlerSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DInputHandlerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DLightSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DLightSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DObjectSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DObjectSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DScatterSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DScatterSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DSceneSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DSceneSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DSurfaceSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DSurfaceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/Q3DThemeSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtDataVisualization/Q3DThemeSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DAxisSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DGraphSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DGraphSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DInputHandlerSlotsMoc.cpp    : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DInputHandlerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstract3DSeriesSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtDataVisualization/QAbstract3DSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBar3DSeriesSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtDataVisualization/QBar3DSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBarDataProxySlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtDataVisualization/QBarDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCategory3DAxisSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCategory3DAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCustom3DItemSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCustom3DItemSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCustom3DLabelSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCustom3DLabelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCustom3DVolumeSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtDataVisualization/QCustom3DVolumeSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHeightMapSurfaceDataProxySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDataVisualization/QHeightMapSurfaceDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemModelBarDataProxySlotsMoc.cpp     : $(QT5XHB_SRC_DIR)/QtDataVisualization/QItemModelBarDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemModelScatterDataProxySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDataVisualization/QItemModelScatterDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemModelSurfaceDataProxySlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDataVisualization/QItemModelSurfaceDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLogValue3DAxisFormatterSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtDataVisualization/QLogValue3DAxisFormatterSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScatter3DSeriesSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtDataVisualization/QScatter3DSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScatterDataProxySlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtDataVisualization/QScatterDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSurface3DSeriesSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtDataVisualization/QSurface3DSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSurfaceDataProxySlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtDataVisualization/QSurfaceDataProxySlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QValue3DAxisSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtDataVisualization/QValue3DAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
