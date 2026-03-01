//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run(cMocExe + " " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""
   LOCAL cMocExe := getenv("QT_MOC_EXE")

   IF empty(cMocExe)
      cMocExe := "moc"
   ENDIF

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source/QtQml/QQmlApplicationEngineSlots.hpp")
      RUNMOC("source/QtQml/QQmlComponentSlots.hpp")
      RUNMOC("source/QtQml/QQmlEngineSlots.hpp")
      RUNMOC("source/QtQml/QQmlExpressionSlots.hpp")
      RUNMOC("source/QtQml/QQmlPropertyMapSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtQml/QQmlApplicationEngineSlotsMoc.cpp")
      ferase("source/QtQml/QQmlComponentSlotsMoc.cpp")
      ferase("source/QtQml/QQmlEngineSlotsMoc.cpp")
      ferase("source/QtQml/QQmlExpressionSlotsMoc.cpp")
      ferase("source/QtQml/QQmlPropertyMapSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
