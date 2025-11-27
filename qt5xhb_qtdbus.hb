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
      run("moc source\QtDBus\QDBusConnectionInterfaceSlots.hpp -o source\QtDBus\QDBusConnectionInterfaceSlotsMoc.cpp")
      run("moc source\QtDBus\QDBusPendingCallWatcherSlots.hpp -o source\QtDBus\QDBusPendingCallWatcherSlotsMoc.cpp")
      run("moc source\QtDBus\QDBusServerSlots.hpp -o source\QtDBus\QDBusServerSlotsMoc.cpp")
      run("moc source\QtDBus\QDBusServiceWatcherSlots.hpp -o source\QtDBus\QDBusServiceWatcherSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtDBus\QDBusConnectionInterfaceSlotsMoc.cpp")
      ferase("source\QtDBus\QDBusPendingCallWatcherSlotsMoc.cpp")
      ferase("source\QtDBus\QDBusServerSlotsMoc.cpp")
      ferase("source\QtDBus\QDBusServiceWatcherSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
