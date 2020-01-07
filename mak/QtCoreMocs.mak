#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractAnimationSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCore/QAbstractAnimationSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractEventDispatcherSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtCore/QAbstractEventDispatcherSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractItemModelSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCore/QAbstractItemModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractStateSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCore/QAbstractStateSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractTransitionSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtCore/QAbstractTransitionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAnimationDriverSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/QAnimationDriverSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCoreApplicationSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/QCoreApplicationSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QFileSystemWatcherSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCore/QFileSystemWatcherSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QIODeviceSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCore/QIODeviceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QItemSelectionModelSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtCore/QItemSelectionModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QObjectSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/QObjectSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QProcessSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtCore/QProcessSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSequentialAnimationGroupSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtCore/QSequentialAnimationGroupSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSignalMapperSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/QSignalMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QStateSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtCore/QStateSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QStateMachineSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/QStateMachineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QThreadSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCore/QThreadSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTimeLineSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCore/QTimeLineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTimerSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtCore/QTimerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVariantAnimationSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtCore/QVariantAnimationSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractListModelMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCore/HAbstractListModel.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModel.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HAbstractTableModelV2Moc.cpp          : $(QT5XHB_SRC_DIR)/QtCore/HAbstractTableModelV2.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
