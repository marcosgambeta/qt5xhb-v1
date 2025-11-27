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
      run("moc source\QtDesigner\QDesignerFormWindowManagerInterfaceSlots.hpp -o source\QtDesigner\QDesignerFormWindowManagerInterfaceSlotsMoc.cpp")
      run("moc source\QtDesigner\QDesignerPropertyEditorInterfaceSlots.hpp -o source\QtDesigner\QDesignerPropertyEditorInterfaceSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtDesigner\QDesignerFormWindowManagerInterfaceSlotsMoc.cpp")
      ferase("source\QtDesigner\QDesignerPropertyEditorInterfaceSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
