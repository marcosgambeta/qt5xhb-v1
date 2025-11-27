//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run("moc " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      run("moc source\QtPositioning\QGeoAreaMonitorSourceSlots.hpp -o source\QtPositioning\QGeoAreaMonitorSourceSlotsMoc.cpp")
      run("moc source\QtPositioning\QGeoPositionInfoSourceSlots.hpp -o source\QtPositioning\QGeoPositionInfoSourceSlotsMoc.cpp")
      run("moc source\QtPositioning\QGeoSatelliteInfoSourceSlots.hpp -o source\QtPositioning\QGeoSatelliteInfoSourceSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtPositioning\QGeoAreaMonitorSourceSlotsMoc.cpp")
      ferase("source\QtPositioning\QGeoPositionInfoSourceSlotsMoc.cpp")
      ferase("source\QtPositioning\QGeoSatelliteInfoSourceSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
