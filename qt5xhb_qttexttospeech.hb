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
      run("moc source\QtTextToSpeech\QTextToSpeechEngineSlots.hpp -o source\QtTextToSpeech\QTextToSpeechEngineSlotsMoc.cpp")
      run("moc source\QtTextToSpeech\QTextToSpeechSlots.hpp -o source\QtTextToSpeech\QTextToSpeechSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtTextToSpeech\QTextToSpeechEngineSlotsMoc.cpp")
      run("del source\QtTextToSpeech\QTextToSpeechSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
