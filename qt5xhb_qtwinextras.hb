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
      run("moc source\QtWinExtras\QWinTaskbarProgressSlots.hpp -o source\QtWinExtras\QWinTaskbarProgressSlotsMoc.cpp")
      run("moc source\QtWinExtras\QWinThumbnailToolButtonSlots.hpp -o source\QtWinExtras\QWinThumbnailToolButtonSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtWinExtras\QWinTaskbarProgressSlotsMoc.cpp")
      run("del source\QtWinExtras\QWinThumbnailToolButtonSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
