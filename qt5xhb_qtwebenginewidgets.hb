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
      run("moc source\QtWebEngineWidgets\QWebEnginePageSlots.hpp -o source\QtWebEngineWidgets\QWebEnginePageSlotsMoc.cpp")
      run("moc source\QtWebEngineWidgets\QWebEngineViewSlots.hpp -o source\QtWebEngineWidgets\QWebEngineViewSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtWebEngineWidgets\QWebEnginePageSlotsMoc.cpp")
      ferase("source\QtWebEngineWidgets\QWebEngineViewSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
