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
      run("moc source\QtGamepad\QGamepadKeyNavigationSlots.hpp -o source\QtGamepad\QGamepadKeyNavigationSlotsMoc.cpp")
      run("moc source\QtGamepad\QGamepadManagerSlots.hpp -o source\QtGamepad\QGamepadManagerSlotsMoc.cpp")
      run("moc source\QtGamepad\QGamepadSlots.hpp -o source\QtGamepad\QGamepadSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtGamepad\QGamepadKeyNavigationSlotsMoc.cpp")
      ferase("source\QtGamepad\QGamepadManagerSlotsMoc.cpp")
      ferase("source\QtGamepad\QGamepadSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
