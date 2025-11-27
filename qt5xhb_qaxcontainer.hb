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
      run("moc source\ActiveQt\QAxBaseSlots.hpp -o source\ActiveQt\QAxBaseSlotsMoc.cpp")
      run("moc source\ActiveQt\QAxObjectSlots.hpp -o source\ActiveQt\QAxObjectSlotsMoc.cpp")
      run("moc source\ActiveQt\QAxScriptSlots.hpp -o source\ActiveQt\QAxScriptSlotsMoc.cpp")
      run("moc source\ActiveQt\QAxWidgetSlots.hpp -o source\ActiveQt\QAxWidgetSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\ActiveQt\QAxBaseSlotsMoc.cpp")
      run("del source\ActiveQt\QAxObjectSlotsMoc.cpp")
      run("del source\ActiveQt\QAxScriptSlotsMoc.cpp")
      run("del source\ActiveQt\QAxWidgetSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
