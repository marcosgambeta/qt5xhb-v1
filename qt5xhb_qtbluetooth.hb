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
      run("moc source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlots.hpp -o source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothLocalDeviceSlots.hpp -o source\QtBluetooth\QBluetoothLocalDeviceSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothServerSlots.hpp -o source\QtBluetooth\QBluetoothServerSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlots.hpp -o source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothSocketSlots.hpp -o source\QtBluetooth\QBluetoothSocketSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothTransferManagerSlots.hpp -o source\QtBluetooth\QBluetoothTransferManagerSlotsMoc.cpp")
      run("moc source\QtBluetooth\QBluetoothTransferReplySlots.hpp -o source\QtBluetooth\QBluetoothTransferReplySlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtBluetooth\QBluetoothDeviceDiscoveryAgentSlotsMoc.cpp")
      run("del source\QtBluetooth\QBluetoothLocalDeviceSlotsMoc.cpp")
      run("del source\QtBluetooth\QBluetoothServerSlotsMoc.cpp")
      run("del source\QtBluetooth\QBluetoothServiceDiscoveryAgentSlotsMoc.cpp")
      run("del source\QtBluetooth\QBluetoothSocketSlotsMoc.cpp")
      run("del source\QtBluetooth\QBluetoothTransferManagerSlotsMoc.cpp")
      run("del source\QtBluetooth\QBluetoothTransferReplySlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
