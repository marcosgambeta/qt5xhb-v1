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
      run("moc source\QtQml\QQmlApplicationEngineSlots.hpp -o source\QtQml\QQmlApplicationEngineSlotsMoc.cpp")
      run("moc source\QtQml\QQmlComponentSlots.hpp -o source\QtQml\QQmlComponentSlotsMoc.cpp")
      run("moc source\QtQml\QQmlEngineSlots.hpp -o source\QtQml\QQmlEngineSlotsMoc.cpp")
      run("moc source\QtQml\QQmlExpressionSlots.hpp -o source\QtQml\QQmlExpressionSlotsMoc.cpp")
      run("moc source\QtQml\QQmlPropertyMapSlots.hpp -o source\QtQml\QQmlPropertyMapSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtQml\QQmlApplicationEngineSlotsMoc.cpp")
      ferase("source\QtQml\QQmlComponentSlotsMoc.cpp")
      ferase("source\QtQml\QQmlEngineSlotsMoc.cpp")
      ferase("source\QtQml\QQmlExpressionSlotsMoc.cpp")
      ferase("source\QtQml\QQmlPropertyMapSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
