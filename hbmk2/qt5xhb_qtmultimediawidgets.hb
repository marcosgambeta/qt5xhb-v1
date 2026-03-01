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
      RUNMOC("source/QtMultimediaWidgets/QGraphicsVideoItemSlots.hpp")
      RUNMOC("source/QtMultimediaWidgets/QVideoWidgetControlSlots.hpp")
      RUNMOC("source/QtMultimediaWidgets/QVideoWidgetSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtMultimediaWidgets/QGraphicsVideoItemSlotsMoc.cpp")
      ferase("source/QtMultimediaWidgets/QVideoWidgetControlSlotsMoc.cpp")
      ferase("source/QtMultimediaWidgets/QVideoWidgetSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
