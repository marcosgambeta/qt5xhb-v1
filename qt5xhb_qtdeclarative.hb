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
      RUNMOC("source\QtDeclarative\QDeclarativeComponentSlots.hpp")
      RUNMOC("source\QtDeclarative\QDeclarativeEngineSlots.hpp")
      RUNMOC("source\QtDeclarative\QDeclarativeExpressionSlots.hpp")
      RUNMOC("source\QtDeclarative\QDeclarativePropertyMapSlots.hpp")
      RUNMOC("source\QtDeclarative\QDeclarativeViewSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtDeclarative\QDeclarativeComponentSlotsMoc.cpp")
      ferase("source\QtDeclarative\QDeclarativeEngineSlotsMoc.cpp")
      ferase("source\QtDeclarative\QDeclarativeExpressionSlotsMoc.cpp")
      ferase("source\QtDeclarative\QDeclarativePropertyMapSlotsMoc.cpp")
      ferase("source\QtDeclarative\QDeclarativeViewSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
