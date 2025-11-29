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
      RUNMOC("source/QtNetworkAuth/QAbstractOAuth2Slots.hpp")
      RUNMOC("source/QtNetworkAuth/QAbstractOAuthReplyHandlerSlots.hpp")
      RUNMOC("source/QtNetworkAuth/QAbstractOAuthSlots.hpp")
      RUNMOC("source/QtNetworkAuth/QOAuth1Slots.hpp")
      RUNMOC("source/QtNetworkAuth/QOAuth2AuthorizationCodeFlowSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtNetworkAuth/QAbstractOAuth2SlotsMoc.cpp")
      ferase("source/QtNetworkAuth/QAbstractOAuthReplyHandlerSlotsMoc.cpp")
      ferase("source/QtNetworkAuth/QAbstractOAuthSlotsMoc.cpp")
      ferase("source/QtNetworkAuth/QOAuth1SlotsMoc.cpp")
      ferase("source/QtNetworkAuth/QOAuth2AuthorizationCodeFlowSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
