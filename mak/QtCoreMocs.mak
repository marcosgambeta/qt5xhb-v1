#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT5XHB_OBJ_DIR)/QAbstractAnimationSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCore/QAbstractAnimationSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractEventDispatcherSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtCore/QAbstractEventDispatcherSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractItemModelSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCore/QAbstractItemModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractStateSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCore/QAbstractStateSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractTransitionSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtCore/QAbstractTransitionSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAnimationDriverSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/QAnimationDriverSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCoreApplicationSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/QCoreApplicationSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QFileSystemWatcherSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCore/QFileSystemWatcherSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QIODeviceSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCore/QIODeviceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemSelectionModelSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtCore/QItemSelectionModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QObjectSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/QObjectSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QProcessSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtCore/QProcessSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSequentialAnimationGroupSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtCore/QSequentialAnimationGroupSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSignalMapperSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/QSignalMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QStateSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtCore/QStateSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QStateMachineSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/QStateMachineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QThreadSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/QThreadSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTimeLineSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCore/QTimeLineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTimerSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtCore/QTimerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVariantAnimationSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtCore/QVariantAnimationSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractListModelMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/HAbstractListModel.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractListModelV2Moc.cpp           : $(QT5XHB_SRC_DIR)/QtCore/HAbstractListModelV2.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModel.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelV2Moc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModelV2.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HEventFilterMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/HEventFilter.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
