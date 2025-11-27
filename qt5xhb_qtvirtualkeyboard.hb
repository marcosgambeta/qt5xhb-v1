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
      RUNMOC("source\QtVirtualKeyboard\QVirtualKeyboardAbstractInputMethodSlots.hpp")
      RUNMOC("source\QtVirtualKeyboard\QVirtualKeyboardInputContextSlots.hpp")
      RUNMOC("source\QtVirtualKeyboard\QVirtualKeyboardInputEngineSlots.hpp")
      RUNMOC("source\QtVirtualKeyboard\QVirtualKeyboardSelectionListModelSlots.hpp")
      RUNMOC("source\QtVirtualKeyboard\QVirtualKeyboardTraceSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtVirtualKeyboard\QVirtualKeyboardAbstractInputMethodSlotsMoc.cpp")
      ferase("source\QtVirtualKeyboard\QVirtualKeyboardInputContextSlotsMoc.cpp")
      ferase("source\QtVirtualKeyboard\QVirtualKeyboardInputEngineSlotsMoc.cpp")
      ferase("source\QtVirtualKeyboard\QVirtualKeyboardSelectionListModelSlotsMoc.cpp")
      ferase("source\QtVirtualKeyboard\QVirtualKeyboardTraceSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
