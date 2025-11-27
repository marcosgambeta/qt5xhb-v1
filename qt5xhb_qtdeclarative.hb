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
      run("moc source\QtDeclarative\QDeclarativeComponentSlots.hpp -o source\QtDeclarative\QDeclarativeComponentSlotsMoc.cpp")
      run("moc source\QtDeclarative\QDeclarativeEngineSlots.hpp -o source\QtDeclarative\QDeclarativeEngineSlotsMoc.cpp")
      run("moc source\QtDeclarative\QDeclarativeExpressionSlots.hpp -o source\QtDeclarative\QDeclarativeExpressionSlotsMoc.cpp")
      run("moc source\QtDeclarative\QDeclarativePropertyMapSlots.hpp -o source\QtDeclarative\QDeclarativePropertyMapSlotsMoc.cpp")
      run("moc source\QtDeclarative\QDeclarativeViewSlots.hpp -o source\QtDeclarative\QDeclarativeViewSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtDeclarative\QDeclarativeComponentSlotsMoc.cpp")
      run("del source\QtDeclarative\QDeclarativeEngineSlotsMoc.cpp")
      run("del source\QtDeclarative\QDeclarativeExpressionSlotsMoc.cpp")
      run("del source\QtDeclarative\QDeclarativePropertyMapSlotsMoc.cpp")
      run("del source\QtDeclarative\QDeclarativeViewSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
