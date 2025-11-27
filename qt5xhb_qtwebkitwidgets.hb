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
      run("moc source\QtWebKitWidgets\QGraphicsWebViewSlots.hpp -o source\QtWebKitWidgets\QGraphicsWebViewSlotsMoc.cpp")
      run("moc source\QtWebKitWidgets\QWebFrameSlots.hpp -o source\QtWebKitWidgets\QWebFrameSlotsMoc.cpp")
      run("moc source\QtWebKitWidgets\QWebPageSlots.hpp -o source\QtWebKitWidgets\QWebPageSlotsMoc.cpp")
      run("moc source\QtWebKitWidgets\QWebViewSlots.hpp -o source\QtWebKitWidgets\QWebViewSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtWebKitWidgets\QGraphicsWebViewSlotsMoc.cpp")
      run("del source\QtWebKitWidgets\QWebFrameSlotsMoc.cpp")
      run("del source\QtWebKitWidgets\QWebPageSlotsMoc.cpp")
      run("del source\QtWebKitWidgets\QWebViewSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
