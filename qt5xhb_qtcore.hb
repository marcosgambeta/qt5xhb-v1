//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      run("moc source\QtCore\HAbstractListModel.hpp -o source\QtCore\HAbstractListModelMoc.cpp")
      run("moc source\QtCore\HAbstractListModelV2.hpp -o source\QtCore\HAbstractListModelV2Moc.cpp")
      run("moc source\QtCore\HAbstractTableModel.hpp -o source\QtCore\HAbstractTableModelMoc.cpp")
      run("moc source\QtCore\HAbstractTableModelV2.hpp -o source\QtCore\HAbstractTableModelV2Moc.cpp")
      run("moc source\QtCore\HEventFilter.hpp -o source\QtCore\HEventFilterMoc.cpp")
      run("moc source\QtCore\QAbstractAnimationSlots.hpp -o source\QtCore\QAbstractAnimationSlotsMoc.cpp")
      run("moc source\QtCore\QAbstractEventDispatcherSlots.hpp -o source\QtCore\QAbstractEventDispatcherSlotsMoc.cpp")
      run("moc source\QtCore\QAbstractItemModelSlots.hpp -o source\QtCore\QAbstractItemModelSlotsMoc.cpp")
      run("moc source\QtCore\QAbstractStateSlots.hpp -o source\QtCore\QAbstractStateSlotsMoc.cpp")
      run("moc source\QtCore\QAbstractTransitionSlots.hpp -o source\QtCore\QAbstractTransitionSlotsMoc.cpp")
      run("moc source\QtCore\QAnimationDriverSlots.hpp -o source\QtCore\QAnimationDriverSlotsMoc.cpp")
      run("moc source\QtCore\QCoreApplicationSlots.hpp -o source\QtCore\QCoreApplicationSlotsMoc.cpp")
      run("moc source\QtCore\QFileSystemWatcherSlots.hpp -o source\QtCore\QFileSystemWatcherSlotsMoc.cpp")
      run("moc source\QtCore\QIODeviceSlots.hpp -o source\QtCore\QIODeviceSlotsMoc.cpp")
      run("moc source\QtCore\QItemSelectionModelSlots.hpp -o source\QtCore\QItemSelectionModelSlotsMoc.cpp")
      run("moc source\QtCore\QObjectSlots.hpp -o source\QtCore\QObjectSlotsMoc.cpp")
      run("moc source\QtCore\QProcessSlots.hpp -o source\QtCore\QProcessSlotsMoc.cpp")
      run("moc source\QtCore\QSequentialAnimationGroupSlots.hpp -o source\QtCore\QSequentialAnimationGroupSlotsMoc.cpp")
      run("moc source\QtCore\QSignalMapperSlots.hpp -o source\QtCore\QSignalMapperSlotsMoc.cpp")
      run("moc source\QtCore\QStateMachineSlots.hpp -o source\QtCore\QStateMachineSlotsMoc.cpp")
      run("moc source\QtCore\QStateSlots.hpp -o source\QtCore\QStateSlotsMoc.cpp")
      run("moc source\QtCore\QThreadSlots.hpp -o source\QtCore\QThreadSlotsMoc.cpp")
      run("moc source\QtCore\QTimeLineSlots.hpp -o source\QtCore\QTimeLineSlotsMoc.cpp")
      run("moc source\QtCore\QTimerSlots.hpp -o source\QtCore\QTimerSlotsMoc.cpp")
      run("moc source\QtCore\QVariantAnimationSlots.hpp -o source\QtCore\QVariantAnimationSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtCore\HAbstractListModelMoc.cpp")
      run("del source\QtCore\HAbstractListModelV2Moc.cpp")
      run("del source\QtCore\HAbstractTableModelMoc.cpp")
      run("del source\QtCore\HAbstractTableModelV2Moc.cpp")
      run("del source\QtCore\HEventFilterMoc.cpp")
      run("del source\QtCore\QAbstractAnimationSlotsMoc.cpp")
      run("del source\QtCore\QAbstractEventDispatcherSlotsMoc.cpp")
      run("del source\QtCore\QAbstractItemModelSlotsMoc.cpp")
      run("del source\QtCore\QAbstractStateSlotsMoc.cpp")
      run("del source\QtCore\QAbstractTransitionSlotsMoc.cpp")
      run("del source\QtCore\QAnimationDriverSlotsMoc.cpp")
      run("del source\QtCore\QCoreApplicationSlotsMoc.cpp")
      run("del source\QtCore\QFileSystemWatcherSlotsMoc.cpp")
      run("del source\QtCore\QIODeviceSlotsMoc.cpp")
      run("del source\QtCore\QItemSelectionModelSlotsMoc.cpp")
      run("del source\QtCore\QObjectSlotsMoc.cpp")
      run("del source\QtCore\QProcessSlotsMoc.cpp")
      run("del source\QtCore\QSequentialAnimationGroupSlotsMoc.cpp")
      run("del source\QtCore\QSignalMapperSlotsMoc.cpp")
      run("del source\QtCore\QStateMachineSlotsMoc.cpp")
      run("del source\QtCore\QStateSlotsMoc.cpp")
      run("del source\QtCore\QThreadSlotsMoc.cpp")
      run("del source\QtCore\QTimeLineSlotsMoc.cpp")
      run("del source\QtCore\QTimerSlotsMoc.cpp")
      run("del source\QtCore\QVariantAnimationSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
