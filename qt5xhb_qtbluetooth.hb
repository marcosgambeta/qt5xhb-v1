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
      RUNMOC("source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlots.hpp")
      RUNMOC("source\QtBluetooth\QBluetoothLocalDeviceSlots.hpp")
      RUNMOC("source\QtBluetooth\QBluetoothServerSlots.hpp")
      RUNMOC("source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlots.hpp")
      RUNMOC("source\QtBluetooth\QBluetoothSocketSlots.hpp")
      RUNMOC("source\QtBluetooth\QBluetoothTransferManagerSlots.hpp")
      RUNMOC("source\QtBluetooth\QBluetoothTransferReplySlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp")
      ferase("source\QtBluetooth\QBluetoothLocalDeviceSlotsMoc.cpp")
      ferase("source\QtBluetooth\QBluetoothServerSlotsMoc.cpp")
      ferase("source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlotsMoc.cpp")
      ferase("source\QtBluetooth\QBluetoothSocketSlotsMoc.cpp")
      ferase("source\QtBluetooth\QBluetoothTransferManagerSlotsMoc.cpp")
      ferase("source\QtBluetooth\QBluetoothTransferReplySlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
