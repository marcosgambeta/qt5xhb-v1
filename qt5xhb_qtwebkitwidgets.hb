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
      RUNMOC("source\QtWebKitWidgets\QGraphicsWebViewSlots.hpp")
      RUNMOC("source\QtWebKitWidgets\QWebFrameSlots.hpp")
      RUNMOC("source\QtWebKitWidgets\QWebPageSlots.hpp")
      RUNMOC("source\QtWebKitWidgets\QWebViewSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtWebKitWidgets\QGraphicsWebViewSlotsMoc.cpp")
      ferase("source\QtWebKitWidgets\QWebFrameSlotsMoc.cpp")
      ferase("source\QtWebKitWidgets\QWebPageSlotsMoc.cpp")
      ferase("source\QtWebKitWidgets\QWebViewSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
