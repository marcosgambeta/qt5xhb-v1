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
      run("moc source\QtQuick\QQuickPaintedItemSlots.hpp -o source\QtQuick\QQuickPaintedItemSlotsMoc.cpp")
      run("moc source\QtQuick\QQuickViewSlots.hpp -o source\QtQuick\QQuickViewSlotsMoc.cpp")
      run("moc source\QtQuick\QQuickWindowSlots.hpp -o source\QtQuick\QQuickWindowSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtQuick\QQuickPaintedItemSlotsMoc.cpp")
      ferase("source\QtQuick\QQuickViewSlotsMoc.cpp")
      ferase("source\QtQuick\QQuickWindowSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
