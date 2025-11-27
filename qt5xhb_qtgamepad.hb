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
      RUNMOC("source\QtGamepad\QGamepadKeyNavigationSlots.hpp")
      RUNMOC("source\QtGamepad\QGamepadManagerSlots.hpp")
      RUNMOC("source\QtGamepad\QGamepadSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtGamepad\QGamepadKeyNavigationSlotsMoc.cpp")
      ferase("source\QtGamepad\QGamepadManagerSlotsMoc.cpp")
      ferase("source\QtGamepad\QGamepadSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
