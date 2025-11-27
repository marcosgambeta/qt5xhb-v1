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
      run("moc source\QtSensors\QAccelerometerSlots.hpp -o source\QtSensors\QAccelerometerSlotsMoc.cpp")
      run("moc source\QtSensors\QLightSensorSlots.hpp -o source\QtSensors\QLightSensorSlotsMoc.cpp")
      run("moc source\QtSensors\QMagnetometerSlots.hpp -o source\QtSensors\QMagnetometerSlotsMoc.cpp")
      run("moc source\QtSensors\QRotationSensorSlots.hpp -o source\QtSensors\QRotationSensorSlotsMoc.cpp")
      run("moc source\QtSensors\QSensorGestureManagerSlots.hpp -o source\QtSensors\QSensorGestureManagerSlotsMoc.cpp")
      run("moc source\QtSensors\QSensorGestureRecognizerSlots.hpp -o source\QtSensors\QSensorGestureRecognizerSlotsMoc.cpp")
      run("moc source\QtSensors\QSensorGestureSlots.hpp -o source\QtSensors\QSensorGestureSlotsMoc.cpp")
      run("moc source\QtSensors\QSensorSlots.hpp -o source\QtSensors\QSensorSlotsMoc.cpp")
      run("moc source\QtSensors\QTapSensorSlots.hpp -o source\QtSensors\QTapSensorSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtSensors\QAccelerometerSlotsMoc.cpp")
      run("del source\QtSensors\QLightSensorSlotsMoc.cpp")
      run("del source\QtSensors\QMagnetometerSlotsMoc.cpp")
      run("del source\QtSensors\QRotationSensorSlotsMoc.cpp")
      run("del source\QtSensors\QSensorGestureManagerSlotsMoc.cpp")
      run("del source\QtSensors\QSensorGestureRecognizerSlotsMoc.cpp")
      run("del source\QtSensors\QSensorGestureSlotsMoc.cpp")
      run("del source\QtSensors\QSensorSlotsMoc.cpp")
      run("del source\QtSensors\QTapSensorSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
