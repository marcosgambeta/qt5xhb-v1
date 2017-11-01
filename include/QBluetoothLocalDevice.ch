/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QBLUETOOTHLOCALDEVICE_CH
#define QBLUETOOTHLOCALDEVICE_CH

/*
enum QBluetoothLocalDevice::Pairing
*/
#define QBluetoothLocalDevice_Unpaired                               0
#define QBluetoothLocalDevice_Paired                                 1
#define QBluetoothLocalDevice_AuthorizedPaired                       2

/*
enum QBluetoothLocalDevice::HostMode
*/
#define QBluetoothLocalDevice_HostPoweredOff                         0
#define QBluetoothLocalDevice_HostConnectable                        1
#define QBluetoothLocalDevice_HostDiscoverable                       2
#define QBluetoothLocalDevice_HostDiscoverableLimitedInquiry         3

/*
enum QBluetoothLocalDevice::Error
*/
#define QBluetoothLocalDevice_NoError                                0
#define QBluetoothLocalDevice_PairingError                           1
#define QBluetoothLocalDevice_UnknownError                           100

#endif /* QBLUETOOTHLOCALDEVICE_CH */
