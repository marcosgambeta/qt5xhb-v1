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
      run("moc source\QtMultimediaWidgets\QGraphicsVideoItemSlots.hpp -o source\QtMultimediaWidgets\QGraphicsVideoItemSlotsMoc.cpp")
      run("moc source\QtMultimediaWidgets\QVideoWidgetControlSlots.hpp -o source\QtMultimediaWidgets\QVideoWidgetControlSlotsMoc.cpp")
      run("moc source\QtMultimediaWidgets\QVideoWidgetSlots.hpp -o source\QtMultimediaWidgets\QVideoWidgetSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtMultimediaWidgets\QGraphicsVideoItemSlotsMoc.cpp")
      ferase("source\QtMultimediaWidgets\QVideoWidgetControlSlotsMoc.cpp")
      ferase("source\QtMultimediaWidgets\QVideoWidgetSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
