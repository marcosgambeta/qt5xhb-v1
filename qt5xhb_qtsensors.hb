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
      RUNMOC("source\QtSensors\QAccelerometerSlots.hpp")
      RUNMOC("source\QtSensors\QLightSensorSlots.hpp")
      RUNMOC("source\QtSensors\QMagnetometerSlots.hpp")
      RUNMOC("source\QtSensors\QRotationSensorSlots.hpp")
      RUNMOC("source\QtSensors\QSensorGestureManagerSlots.hpp")
      RUNMOC("source\QtSensors\QSensorGestureRecognizerSlots.hpp")
      RUNMOC("source\QtSensors\QSensorGestureSlots.hpp")
      RUNMOC("source\QtSensors\QSensorSlots.hpp")
      RUNMOC("source\QtSensors\QTapSensorSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtSensors\QAccelerometerSlotsMoc.cpp")
      ferase("source\QtSensors\QLightSensorSlotsMoc.cpp")
      ferase("source\QtSensors\QMagnetometerSlotsMoc.cpp")
      ferase("source\QtSensors\QRotationSensorSlotsMoc.cpp")
      ferase("source\QtSensors\QSensorGestureManagerSlotsMoc.cpp")
      ferase("source\QtSensors\QSensorGestureRecognizerSlotsMoc.cpp")
      ferase("source\QtSensors\QSensorGestureSlotsMoc.cpp")
      ferase("source\QtSensors\QSensorSlotsMoc.cpp")
      ferase("source\QtSensors\QTapSensorSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
