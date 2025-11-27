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
      run("moc source\QtWebChannel\QWebChannelAbstractTransportSlots.hpp -o source\QtWebChannel\QWebChannelAbstractTransportSlotsMoc.cpp")
      run("moc source\QtWebChannel\QWebChannelSlots.hpp -o source\QtWebChannel\QWebChannelSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtWebChannel\QWebChannelAbstractTransportSlotsMoc.cpp")
      ferase("source\QtWebChannel\QWebChannelSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
