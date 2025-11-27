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
      run("moc source\QtNetworkAuth\QAbstractOAuth2Slots.hpp -o source\QtNetworkAuth\QAbstractOAuth2SlotsMoc.cpp")
      run("moc source\QtNetworkAuth\QAbstractOAuthReplyHandlerSlots.hpp -o source\QtNetworkAuth\QAbstractOAuthReplyHandlerSlotsMoc.cpp")
      run("moc source\QtNetworkAuth\QAbstractOAuthSlots.hpp -o source\QtNetworkAuth\QAbstractOAuthSlotsMoc.cpp")
      run("moc source\QtNetworkAuth\QOAuth1Slots.hpp -o source\QtNetworkAuth\QOAuth1SlotsMoc.cpp")
      run("moc source\QtNetworkAuth\QOAuth2AuthorizationCodeFlowSlots.hpp -o source\QtNetworkAuth\QOAuth2AuthorizationCodeFlowSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtNetworkAuth\QAbstractOAuth2SlotsMoc.cpp")
      ferase("source\QtNetworkAuth\QAbstractOAuthReplyHandlerSlotsMoc.cpp")
      ferase("source\QtNetworkAuth\QAbstractOAuthSlotsMoc.cpp")
      ferase("source\QtNetworkAuth\QOAuth1SlotsMoc.cpp")
      ferase("source\QtNetworkAuth\QOAuth2AuthorizationCodeFlowSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
