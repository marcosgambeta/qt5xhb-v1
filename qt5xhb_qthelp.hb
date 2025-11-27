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
      run("moc source\QtHelp\QHelpContentModelSlots.hpp -o source\QtHelp\QHelpContentModelSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpContentWidgetSlots.hpp -o source\QtHelp\QHelpContentWidgetSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpEngineCoreSlots.hpp -o source\QtHelp\QHelpEngineCoreSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpIndexModelSlots.hpp -o source\QtHelp\QHelpIndexModelSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpIndexWidgetSlots.hpp -o source\QtHelp\QHelpIndexWidgetSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpSearchEngineSlots.hpp -o source\QtHelp\QHelpSearchEngineSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpSearchQueryWidgetSlots.hpp -o source\QtHelp\QHelpSearchQueryWidgetSlotsMoc.cpp")
      run("moc source\QtHelp\QHelpSearchResultWidgetSlots.hpp -o source\QtHelp\QHelpSearchResultWidgetSlotsMoc.cpp")
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
