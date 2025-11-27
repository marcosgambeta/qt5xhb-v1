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
      run("moc source\QtNetwork\QAbstractSocketSlots.hpp -o source\QtNetwork\QAbstractSocketSlotsMoc.cpp")
      run("moc source\QtNetwork\QDnsLookupSlots.hpp -o source\QtNetwork\QDnsLookupSlotsMoc.cpp")
      run("moc source\QtNetwork\QLocalServerSlots.hpp -o source\QtNetwork\QLocalServerSlotsMoc.cpp")
      run("moc source\QtNetwork\QLocalSocketSlots.hpp -o source\QtNetwork\QLocalSocketSlotsMoc.cpp")
      run("moc source\QtNetwork\QNetworkAccessManagerSlots.hpp -o source\QtNetwork\QNetworkAccessManagerSlotsMoc.cpp")
      run("moc source\QtNetwork\QNetworkConfigurationManagerSlots.hpp -o source\QtNetwork\QNetworkConfigurationManagerSlotsMoc.cpp")
      run("moc source\QtNetwork\QNetworkReplySlots.hpp -o source\QtNetwork\QNetworkReplySlotsMoc.cpp")
      run("moc source\QtNetwork\QNetworkSessionSlots.hpp -o source\QtNetwork\QNetworkSessionSlotsMoc.cpp")
      run("moc source\QtNetwork\QSslSocketSlots.hpp -o source\QtNetwork\QSslSocketSlotsMoc.cpp")
      run("moc source\QtNetwork\QTcpServerSlots.hpp -o source\QtNetwork\QTcpServerSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtNetwork\QAbstractSocketSlotsMoc.cpp")
      ferase("source\QtNetwork\QDnsLookupSlotsMoc.cpp")
      ferase("source\QtNetwork\QLocalServerSlotsMoc.cpp")
      ferase("source\QtNetwork\QLocalSocketSlotsMoc.cpp")
      ferase("source\QtNetwork\QNetworkAccessManagerSlotsMoc.cpp")
      ferase("source\QtNetwork\QNetworkConfigurationManagerSlotsMoc.cpp")
      ferase("source\QtNetwork\QNetworkReplySlotsMoc.cpp")
      ferase("source\QtNetwork\QNetworkSessionSlotsMoc.cpp")
      ferase("source\QtNetwork\QSslSocketSlotsMoc.cpp")
      ferase("source\QtNetwork\QTcpServerSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
