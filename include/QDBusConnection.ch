/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QDBusConnection::BusType
*/
#define QDBusConnection_SessionBus                                   0
#define QDBusConnection_SystemBus                                    1
#define QDBusConnection_ActivationBus                                2

/*
enum QDBusConnection::RegisterOption
flags QDBusConnection::RegisterOptions
*/
#define QDBusConnection_ExportAdaptors                               0x01
#define QDBusConnection_ExportScriptableSlots                        0x10
#define QDBusConnection_ExportScriptableSignals                      0x20
#define QDBusConnection_ExportScriptableProperties                   0x40
#define QDBusConnection_ExportScriptableInvokables                   0x80
#define QDBusConnection_ExportScriptableContents                     0xf0
#define QDBusConnection_ExportNonScriptableSlots                     0x100
#define QDBusConnection_ExportNonScriptableSignals                   0x200
#define QDBusConnection_ExportNonScriptableProperties                0x400
#define QDBusConnection_ExportNonScriptableInvokables                0x800
#define QDBusConnection_ExportNonScriptableContents                  0xf00
#define QDBusConnection_ExportAllSlots                               hb_bitor(QDBusConnection_ExportScriptableSlots,QDBusConnection_ExportNonScriptableSlots)
#define QDBusConnection_ExportAllSignals                             hb_bitor(QDBusConnection_ExportScriptableSignals,QDBusConnection_ExportNonScriptableSignals)
#define QDBusConnection_ExportAllProperties                          hb_bitor(QDBusConnection_ExportScriptableProperties,QDBusConnection_ExportNonScriptableProperties)
#define QDBusConnection_ExportAllInvokables                          hb_bitor(QDBusConnection_ExportScriptableInvokables,QDBusConnection_ExportNonScriptableInvokables)
#define QDBusConnection_ExportAllContents                            hb_bitor(QDBusConnection_ExportScriptableContents,QDBusConnection_ExportNonScriptableContents)
#define QDBusConnection_ExportAllSignal                              QDBusConnection_ExportAllSignals
#define QDBusConnection_ExportChildObjects                           0x1000
// Reserved = 0xff000000

/*
// TODO: verificar depois
enum UnregisterMode
flags UnregisterMode
*/
//UnregisterNode
//UnregisterTree

/*
enum QDBusConnection::VirtualObjectRegisterOption
flags QDBusConnection::VirtualObjectRegisterOptions
*/
#define QDBusConnection_SingleNode                                   0x0
#define QDBusConnection_SubPath                                      0x1
// Reserved = 0xff000000

/*
enum QDBusConnection::ConnectionCapability
flags QDBusConnection::ConnectionCapabilities
*/
#define QDBusConnection_UnixFileDescriptorPassing                    0x0001
