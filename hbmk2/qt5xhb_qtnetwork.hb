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
      RUNMOC("source/QtNetwork/QAbstractSocketSlots.hpp")
      RUNMOC("source/QtNetwork/QDnsLookupSlots.hpp")
      RUNMOC("source/QtNetwork/QLocalServerSlots.hpp")
      RUNMOC("source/QtNetwork/QLocalSocketSlots.hpp")
      RUNMOC("source/QtNetwork/QNetworkAccessManagerSlots.hpp")
      RUNMOC("source/QtNetwork/QNetworkConfigurationManagerSlots.hpp")
      RUNMOC("source/QtNetwork/QNetworkReplySlots.hpp")
      RUNMOC("source/QtNetwork/QNetworkSessionSlots.hpp")
      RUNMOC("source/QtNetwork/QSslSocketSlots.hpp")
      RUNMOC("source/QtNetwork/QTcpServerSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtNetwork/QAbstractSocketSlotsMoc.cpp")
      ferase("source/QtNetwork/QDnsLookupSlotsMoc.cpp")
      ferase("source/QtNetwork/QLocalServerSlotsMoc.cpp")
      ferase("source/QtNetwork/QLocalSocketSlotsMoc.cpp")
      ferase("source/QtNetwork/QNetworkAccessManagerSlotsMoc.cpp")
      ferase("source/QtNetwork/QNetworkConfigurationManagerSlotsMoc.cpp")
      ferase("source/QtNetwork/QNetworkReplySlotsMoc.cpp")
      ferase("source/QtNetwork/QNetworkSessionSlotsMoc.cpp")
      ferase("source/QtNetwork/QSslSocketSlotsMoc.cpp")
      ferase("source/QtNetwork/QTcpServerSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
