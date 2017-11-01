/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QNETWORKCONFIGURATIONMANAGER_CH
#define QNETWORKCONFIGURATIONMANAGER_CH

/*
enum QNetworkConfigurationManager::Capability
flags QNetworkConfigurationManager::Capabilities
*/
#define QNetworkConfigurationManager_CanStartAndStopInterfaces       0x00000001
#define QNetworkConfigurationManager_DirectConnectionRouting         0x00000002
#define QNetworkConfigurationManager_SystemSessionSupport            0x00000004
#define QNetworkConfigurationManager_ApplicationLevelRoaming         0x00000008
#define QNetworkConfigurationManager_ForcedRoaming                   0x00000010
#define QNetworkConfigurationManager_DataStatistics                  0x00000020
#define QNetworkConfigurationManager_NetworkSessionRequired          0x00000040

#endif /* QNETWORKCONFIGURATIONMANAGER_CH */
