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
      run("moc source\QtPrintSupport\QPrintDialogSlots.hpp -o source\QtPrintSupport\QPrintDialogSlotsMoc.cpp")
      run("moc source\QtPrintSupport\QPrintPreviewDialogSlots.hpp -o source\QtPrintSupport\QPrintPreviewDialogSlotsMoc.cpp")
      run("moc source\QtPrintSupport\QPrintPreviewWidgetSlots.hpp -o source\QtPrintSupport\QPrintPreviewWidgetSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtPrintSupport\QPrintDialogSlotsMoc.cpp")
      run("del source\QtPrintSupport\QPrintPreviewDialogSlotsMoc.cpp")
      run("del source\QtPrintSupport\QPrintPreviewWidgetSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
