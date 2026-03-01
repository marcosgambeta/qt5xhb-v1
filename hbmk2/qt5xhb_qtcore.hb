//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run(cMocExe + " " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""
   LOCAL cMocExe := getenv("QT_MOC_EXE")

   IF empty(cMocExe)
      cMocExe := "moc"
   ENDIF

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source/QtCore/HAbstractListModel.hpp")
      RUNMOC("source/QtCore/HAbstractListModelV2.hpp")
      RUNMOC("source/QtCore/HAbstractTableModel.hpp")
      RUNMOC("source/QtCore/HAbstractTableModelV2.hpp")
      RUNMOC("source/QtCore/HEventFilter.hpp")
      RUNMOC("source/QtCore/QAbstractAnimationSlots.hpp")
      RUNMOC("source/QtCore/QAbstractEventDispatcherSlots.hpp")
      RUNMOC("source/QtCore/QAbstractItemModelSlots.hpp")
      RUNMOC("source/QtCore/QAbstractStateSlots.hpp")
      RUNMOC("source/QtCore/QAbstractTransitionSlots.hpp")
      RUNMOC("source/QtCore/QAnimationDriverSlots.hpp")
      RUNMOC("source/QtCore/QCoreApplicationSlots.hpp")
      RUNMOC("source/QtCore/QFileSystemWatcherSlots.hpp")
      RUNMOC("source/QtCore/QIODeviceSlots.hpp")
      RUNMOC("source/QtCore/QItemSelectionModelSlots.hpp")
      RUNMOC("source/QtCore/QObjectSlots.hpp")
      RUNMOC("source/QtCore/QProcessSlots.hpp")
      RUNMOC("source/QtCore/QSequentialAnimationGroupSlots.hpp")
      RUNMOC("source/QtCore/QSignalMapperSlots.hpp")
      RUNMOC("source/QtCore/QStateMachineSlots.hpp")
      RUNMOC("source/QtCore/QStateSlots.hpp")
      RUNMOC("source/QtCore/QThreadSlots.hpp")
      RUNMOC("source/QtCore/QTimeLineSlots.hpp")
      RUNMOC("source/QtCore/QTimerSlots.hpp")
      RUNMOC("source/QtCore/QVariantAnimationSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtCore/HAbstractListModelMoc.cpp")
      ferase("source/QtCore/HAbstractListModelV2Moc.cpp")
      ferase("source/QtCore/HAbstractTableModelMoc.cpp")
      ferase("source/QtCore/HAbstractTableModelV2Moc.cpp")
      ferase("source/QtCore/HEventFilterMoc.cpp")
      ferase("source/QtCore/QAbstractAnimationSlotsMoc.cpp")
      ferase("source/QtCore/QAbstractEventDispatcherSlotsMoc.cpp")
      ferase("source/QtCore/QAbstractItemModelSlotsMoc.cpp")
      ferase("source/QtCore/QAbstractStateSlotsMoc.cpp")
      ferase("source/QtCore/QAbstractTransitionSlotsMoc.cpp")
      ferase("source/QtCore/QAnimationDriverSlotsMoc.cpp")
      ferase("source/QtCore/QCoreApplicationSlotsMoc.cpp")
      ferase("source/QtCore/QFileSystemWatcherSlotsMoc.cpp")
      ferase("source/QtCore/QIODeviceSlotsMoc.cpp")
      ferase("source/QtCore/QItemSelectionModelSlotsMoc.cpp")
      ferase("source/QtCore/QObjectSlotsMoc.cpp")
      ferase("source/QtCore/QProcessSlotsMoc.cpp")
      ferase("source/QtCore/QSequentialAnimationGroupSlotsMoc.cpp")
      ferase("source/QtCore/QSignalMapperSlotsMoc.cpp")
      ferase("source/QtCore/QStateMachineSlotsMoc.cpp")
      ferase("source/QtCore/QStateSlotsMoc.cpp")
      ferase("source/QtCore/QThreadSlotsMoc.cpp")
      ferase("source/QtCore/QTimeLineSlotsMoc.cpp")
      ferase("source/QtCore/QTimerSlotsMoc.cpp")
      ferase("source/QtCore/QVariantAnimationSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
