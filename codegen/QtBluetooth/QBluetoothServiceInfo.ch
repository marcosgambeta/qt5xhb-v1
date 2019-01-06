%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

/*
enum QBluetoothServiceInfo::AttributeId
*/
#define QBluetoothServiceInfo_ServiceRecordHandle                    0x0000
#define QBluetoothServiceInfo_ServiceClassIds                        0x0001
#define QBluetoothServiceInfo_ServiceRecordState                     0x0002
#define QBluetoothServiceInfo_ServiceId                              0x0003
#define QBluetoothServiceInfo_ProtocolDescriptorList                 0x0004
#define QBluetoothServiceInfo_BrowseGroupList                        0x0005
#define QBluetoothServiceInfo_LanguageBaseAttributeIdList            0x0006
#define QBluetoothServiceInfo_ServiceInfoTimeToLive                  0x0007
#define QBluetoothServiceInfo_ServiceAvailability                    0x0008
#define QBluetoothServiceInfo_BluetoothProfileDescriptorList         0x0009
#define QBluetoothServiceInfo_DocumentationUrl                       0x000A
#define QBluetoothServiceInfo_ClientExecutableUrl                    0x000B
#define QBluetoothServiceInfo_IconUrl                                0x000C
#define QBluetoothServiceInfo_AdditionalProtocolDescriptorList       0x000D
#define QBluetoothServiceInfo_PrimaryLanguageBase                    0x0100
#define QBluetoothServiceInfo_ServiceName                            QBluetoothServiceInfo_PrimaryLanguageBase + 0x0000
#define QBluetoothServiceInfo_ServiceDescription                     QBluetoothServiceInfo_PrimaryLanguageBase + 0x0001
#define QBluetoothServiceInfo_ServiceProvider                        QBluetoothServiceInfo_PrimaryLanguageBase + 0x0002

/*
enum QBluetoothServiceInfo::Protocol
*/
#define QBluetoothServiceInfo_UnknownProtocol                        0
#define QBluetoothServiceInfo_L2capProtocol                          1
#define QBluetoothServiceInfo_RfcommProtocol                         2
