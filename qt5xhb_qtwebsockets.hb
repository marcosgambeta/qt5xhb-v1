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
      run("moc source\QtWebSockets\QWebSocketServerSlots.hpp -o source\QtWebSockets\QWebSocketServerSlotsMoc.cpp")
      run("moc source\QtWebSockets\QWebSocketSlots.hpp -o source\QtWebSockets\QWebSocketSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtWebSockets\QWebSocketServerSlotsMoc.cpp")
      ferase("source\QtWebSockets\QWebSocketSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
