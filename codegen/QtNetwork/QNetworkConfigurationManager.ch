%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

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
