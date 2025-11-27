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
      RUNMOC("source\QtHelp\QHelpContentModelSlots.hpp")
      RUNMOC("source\QtHelp\QHelpContentWidgetSlots.hpp")
      RUNMOC("source\QtHelp\QHelpEngineCoreSlots.hpp")
      RUNMOC("source\QtHelp\QHelpIndexModelSlots.hpp")
      RUNMOC("source\QtHelp\QHelpIndexWidgetSlots.hpp")
      RUNMOC("source\QtHelp\QHelpSearchEngineSlots.hpp")
      RUNMOC("source\QtHelp\QHelpSearchQueryWidgetSlots.hpp")
      RUNMOC("source\QtHelp\QHelpSearchResultWidgetSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtHelp\QHelpContentModelSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpContentWidgetSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpEngineCoreSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpIndexModelSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpIndexWidgetSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpSearchEngineSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpSearchQueryWidgetSlotsMoc.cpp")
      ferase("source\QtHelp\QHelpSearchResultWidgetSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
