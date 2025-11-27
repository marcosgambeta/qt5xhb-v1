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
      run("moc source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlots.hpp -o source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothLocalDeviceSlots.hpp -o source\QtBluetooth\QBluetoothLocalDeviceSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothServerSlots.hpp -o source\QtBluetooth\QBluetoothServerSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlots.hpp -o source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothSocketSlots.hpp -o source\QtBluetooth\QBluetoothSocketSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothTransferManagerSlots.hpp -o source\QtBluetooth\QBluetoothTransferManagerSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothTransferReplySlots.hpp -o source\QtBluetooth\QBluetoothTransferReplySlotsMoc.cpp")
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
