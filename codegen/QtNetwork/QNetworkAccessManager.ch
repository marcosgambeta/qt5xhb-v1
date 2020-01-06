%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QNetworkAccessManager::NetworkAccessibility
*/
%% #ifndef QT_NO_BEARERMANAGEMENT
#define QNetworkAccessManager_UnknownAccessibility                   -1
#define QNetworkAccessManager_NotAccessible                          0
#define QNetworkAccessManager_Accessible                             1
%% #endif

/*
enum QNetworkAccessManager::Operation
*/
#define QNetworkAccessManager_HeadOperation                          1
#define QNetworkAccessManager_GetOperation                           2
#define QNetworkAccessManager_PutOperation                           3
#define QNetworkAccessManager_PostOperation                          4
#define QNetworkAccessManager_DeleteOperation                        5
#define QNetworkAccessManager_CustomOperation                        6
#define QNetworkAccessManager_UnknownOperation                       0
