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
      run("moc source\QtLocation\QGeoCodeReplySlots.hpp -o source\QtLocation\QGeoCodeReplySlotsMoc.cpp")
      run("moc source\QtLocation\QGeoCodingManagerEngineSlots.hpp -o source\QtLocation\QGeoCodingManagerEngineSlotsMoc.cpp")
      run("moc source\QtLocation\QGeoCodingManagerSlots.hpp -o source\QtLocation\QGeoCodingManagerSlotsMoc.cpp")
      run("moc source\QtLocation\QGeoRouteReplySlots.hpp -o source\QtLocation\QGeoRouteReplySlotsMoc.cpp")
      run("moc source\QtLocation\QGeoRoutingManagerEngineSlots.hpp -o source\QtLocation\QGeoRoutingManagerEngineSlotsMoc.cpp")
      run("moc source\QtLocation\QGeoRoutingManagerSlots.hpp -o source\QtLocation\QGeoRoutingManagerSlotsMoc.cpp")
      run("moc source\QtLocation\QPlaceManagerEngineSlots.hpp -o source\QtLocation\QPlaceManagerEngineSlotsMoc.cpp")
      run("moc source\QtLocation\QPlaceManagerSlots.hpp -o source\QtLocation\QPlaceManagerSlotsMoc.cpp")
      run("moc source\QtLocation\QPlaceReplySlots.hpp -o source\QtLocation\QPlaceReplySlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtLocation\QGeoCodeReplySlotsMoc.cpp")
      run("del source\QtLocation\QGeoCodingManagerEngineSlotsMoc.cpp")
      run("del source\QtLocation\QGeoCodingManagerSlotsMoc.cpp")
      run("del source\QtLocation\QGeoRouteReplySlotsMoc.cpp")
      run("del source\QtLocation\QGeoRoutingManagerEngineSlotsMoc.cpp")
      run("del source\QtLocation\QGeoRoutingManagerSlotsMoc.cpp")
      run("del source\QtLocation\QPlaceManagerEngineSlotsMoc.cpp")
      run("del source\QtLocation\QPlaceManagerSlotsMoc.cpp")
      run("del source\QtLocation\QPlaceReplySlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
