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
      run("moc source\QtWebEngine\QQuickWebEngineProfileSlots.hpp -o source\QtWebEngine\QQuickWebEngineProfileSlotsMoc.cpp")
      run("moc source\QtWebEngine\QQuickWebEngineScriptSlots.hpp -o source\QtWebEngine\QQuickWebEngineScriptSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtWebEngine\QQuickWebEngineProfileSlotsMoc.cpp")
      ferase("source\QtWebEngine\QQuickWebEngineScriptSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
