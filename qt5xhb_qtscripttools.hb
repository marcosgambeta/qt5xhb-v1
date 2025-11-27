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
      run("moc source\QtScriptTools\QScriptEngineDebuggerSlots.hpp -o source\QtScriptTools\QScriptEngineDebuggerSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtScriptTools\QScriptEngineDebuggerSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
