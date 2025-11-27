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
      run("moc source\QtVirtualKeyboard\QVirtualKeyboardAbstractInputMethodSlots.hpp -o source\QtVirtualKeyboard\QVirtualKeyboardAbstractInputMethodSlotsMoc.cpp")
      run("moc source\QtVirtualKeyboard\QVirtualKeyboardInputContextSlots.hpp -o source\QtVirtualKeyboard\QVirtualKeyboardInputContextSlotsMoc.cpp")
      run("moc source\QtVirtualKeyboard\QVirtualKeyboardInputEngineSlots.hpp -o source\QtVirtualKeyboard\QVirtualKeyboardInputEngineSlotsMoc.cpp")
      run("moc source\QtVirtualKeyboard\QVirtualKeyboardSelectionListModelSlots.hpp -o source\QtVirtualKeyboard\QVirtualKeyboardSelectionListModelSlotsMoc.cpp")
      run("moc source\QtVirtualKeyboard\QVirtualKeyboardTraceSlots.hpp -o source\QtVirtualKeyboard\QVirtualKeyboardTraceSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtVirtualKeyboard\QVirtualKeyboardAbstractInputMethodSlotsMoc.cpp")
      run("del source\QtVirtualKeyboard\QVirtualKeyboardInputContextSlotsMoc.cpp")
      run("del source\QtVirtualKeyboard\QVirtualKeyboardInputEngineSlotsMoc.cpp")
      run("del source\QtVirtualKeyboard\QVirtualKeyboardSelectionListModelSlotsMoc.cpp")
      run("del source\QtVirtualKeyboard\QVirtualKeyboardTraceSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
