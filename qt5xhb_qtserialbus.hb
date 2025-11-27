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
      run("moc source\QtSerialBus\QCanBusDeviceSlots.hpp -o source\QtSerialBus\QCanBusDeviceSlotsMoc.cpp")
      run("moc source\QtSerialBus\QModbusClientSlots.hpp -o source\QtSerialBus\QModbusClientSlotsMoc.cpp")
      run("moc source\QtSerialBus\QModbusDeviceSlots.hpp -o source\QtSerialBus\QModbusDeviceSlotsMoc.cpp")
      run("moc source\QtSerialBus\QModbusReplySlots.hpp -o source\QtSerialBus\QModbusReplySlotsMoc.cpp")
      run("moc source\QtSerialBus\QModbusServerSlots.hpp -o source\QtSerialBus\QModbusServerSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtSerialBus\QCanBusDeviceSlotsMoc.cpp")
      run("del source\QtSerialBus\QModbusClientSlotsMoc.cpp")
      run("del source\QtSerialBus\QModbusDeviceSlotsMoc.cpp")
      run("del source\QtSerialBus\QModbusReplySlotsMoc.cpp")
      run("del source\QtSerialBus\QModbusServerSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
