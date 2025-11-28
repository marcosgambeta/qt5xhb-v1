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
      RUNMOC("source\QtLocation\QGeoCodeReplySlots.hpp")
      RUNMOC("source\QtLocation\QGeoCodingManagerEngineSlots.hpp")
      RUNMOC("source\QtLocation\QGeoCodingManagerSlots.hpp")
      RUNMOC("source\QtLocation\QGeoRouteReplySlots.hpp")
      RUNMOC("source\QtLocation\QGeoRoutingManagerEngineSlots.hpp")
      RUNMOC("source\QtLocation\QGeoRoutingManagerSlots.hpp")
      RUNMOC("source\QtLocation\QPlaceManagerEngineSlots.hpp")
      RUNMOC("source\QtLocation\QPlaceManagerSlots.hpp")
      RUNMOC("source\QtLocation\QPlaceReplySlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtLocation\QGeoCodeReplySlotsMoc.cpp")
      ferase("source\QtLocation\QGeoCodingManagerEngineSlotsMoc.cpp")
      ferase("source\QtLocation\QGeoCodingManagerSlotsMoc.cpp")
      ferase("source\QtLocation\QGeoRouteReplySlotsMoc.cpp")
      ferase("source\QtLocation\QGeoRoutingManagerEngineSlotsMoc.cpp")
      ferase("source\QtLocation\QGeoRoutingManagerSlotsMoc.cpp")
      ferase("source\QtLocation\QPlaceManagerEngineSlotsMoc.cpp")
      ferase("source\QtLocation\QPlaceManagerSlotsMoc.cpp")
      ferase("source\QtLocation\QPlaceReplySlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
