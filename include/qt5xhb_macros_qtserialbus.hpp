//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTSERIALBUS_H
#define QT5XHB_MACROS_QTSERIALBUS_H

#define ISQCANBUS(n)                                        Qt5xHb::isObjectDerivedFrom(n, "QCanBus")
#define ISQCANBUSDEVICE(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QCanBusDevice")
#define ISQCANBUSDEVICEINFO(n)                              Qt5xHb::isObjectDerivedFrom(n, "QCanBusDeviceInfo")
#define ISQCANBUSFACTORY(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QCanBusFactory")
#define ISQCANBUSFACTORYV2(n)                               Qt5xHb::isObjectDerivedFrom(n, "QCanBusFactoryV2")
#define ISQCANBUSFRAME(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QCanBusFrame")
#define ISQMODBUSCLIENT(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QModbusClient")
#define ISQMODBUSDEVICE(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QModbusDevice")
#define ISQMODBUSREPLY(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QModbusReply")
#define ISQMODBUSRTUSERIALMASTER(n)                         Qt5xHb::isObjectDerivedFrom(n, "QModbusRtuSerialMaster")
#define ISQMODBUSRTUSERIALSLAVE(n)                          Qt5xHb::isObjectDerivedFrom(n, "QModbusRtuSerialSlave")
#define ISQMODBUSSERVER(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QModbusServer")
#define ISQMODBUSTCPCLIENT(n)                               Qt5xHb::isObjectDerivedFrom(n, "QModbusTcpClient")
#define ISQMODBUSTCPSERVER(n)                               Qt5xHb::isObjectDerivedFrom(n, "QModbusTcpServer")

#define PQCANBUS(n)                                         static_cast<QCanBus*>(Qt5xHb::itemGetPtr(n))
#define PQCANBUSDEVICE(n)                                   static_cast<QCanBusDevice*>(Qt5xHb::itemGetPtr(n))
#define PQCANBUSDEVICEINFO(n)                               static_cast<QCanBusDeviceInfo*>(Qt5xHb::itemGetPtr(n))
#define PQCANBUSFACTORY(n)                                  static_cast<QCanBusFactory*>(Qt5xHb::itemGetPtr(n))
#define PQCANBUSFACTORYV2(n)                                static_cast<QCanBusFactoryV2*>(Qt5xHb::itemGetPtr(n))
#define PQCANBUSFRAME(n)                                    static_cast<QCanBusFrame*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSCLIENT(n)                                   static_cast<QModbusClient*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSDEVICE(n)                                   static_cast<QModbusDevice*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSREPLY(n)                                    static_cast<QModbusReply*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSRTUSERIALMASTER(n)                          static_cast<QModbusRtuSerialMaster*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSRTUSERIALSLAVE(n)                           static_cast<QModbusRtuSerialSlave*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSSERVER(n)                                   static_cast<QModbusServer*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSTCPCLIENT(n)                                static_cast<QModbusTcpClient*>(Qt5xHb::itemGetPtr(n))
#define PQMODBUSTCPSERVER(n)                                static_cast<QModbusTcpServer*>(Qt5xHb::itemGetPtr(n))

#define OPQCANBUS(n, v)                                     HB_ISNIL(n) ? v : static_cast<QCanBus*>(Qt5xHb::itemGetPtr(n))
#define OPQCANBUSDEVICE(n, v)                               HB_ISNIL(n) ? v : static_cast<QCanBusDevice*>(Qt5xHb::itemGetPtr(n))
#define OPQCANBUSDEVICEINFO(n, v)                           HB_ISNIL(n) ? v : static_cast<QCanBusDeviceInfo*>(Qt5xHb::itemGetPtr(n))
#define OPQCANBUSFACTORY(n, v)                              HB_ISNIL(n) ? v : static_cast<QCanBusFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQCANBUSFACTORYV2(n, v)                            HB_ISNIL(n) ? v : static_cast<QCanBusFactoryV2*>(Qt5xHb::itemGetPtr(n))
#define OPQCANBUSFRAME(n, v)                                HB_ISNIL(n) ? v : static_cast<QCanBusFrame*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSCLIENT(n, v)                               HB_ISNIL(n) ? v : static_cast<QModbusClient*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSDEVICE(n, v)                               HB_ISNIL(n) ? v : static_cast<QModbusDevice*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSREPLY(n, v)                                HB_ISNIL(n) ? v : static_cast<QModbusReply*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSRTUSERIALMASTER(n, v)                      HB_ISNIL(n) ? v : static_cast<QModbusRtuSerialMaster*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSRTUSERIALSLAVE(n, v)                       HB_ISNIL(n) ? v : static_cast<QModbusRtuSerialSlave*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSSERVER(n, v)                               HB_ISNIL(n) ? v : static_cast<QModbusServer*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSTCPCLIENT(n, v)                            HB_ISNIL(n) ? v : static_cast<QModbusTcpClient*>(Qt5xHb::itemGetPtr(n))
#define OPQMODBUSTCPSERVER(n, v)                            HB_ISNIL(n) ? v : static_cast<QModbusTcpServer*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTSERIALBUS_H */
