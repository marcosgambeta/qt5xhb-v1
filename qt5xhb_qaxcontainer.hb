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
      RUNMOC("source\ActiveQt\QAxBaseSlots.hpp")
      RUNMOC("source\ActiveQt\QAxObjectSlots.hpp")
      RUNMOC("source\ActiveQt\QAxScriptSlots.hpp")
      RUNMOC("source\ActiveQt\QAxWidgetSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\ActiveQt\QAxBaseSlotsMoc.cpp")
      ferase("source\ActiveQt\QAxObjectSlotsMoc.cpp")
      ferase("source\ActiveQt\QAxScriptSlotsMoc.cpp")
      ferase("source\ActiveQt\QAxWidgetSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
