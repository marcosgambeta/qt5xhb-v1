%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

/*
enum QDBusConnectionInterface::ServiceQueueOptions
*/
#define QDBusConnectionInterface_DontQueueService                    0
#define QDBusConnectionInterface_QueueService                        1
#define QDBusConnectionInterface_ReplaceExistingService              2

/*
enum QDBusConnectionInterface::ServiceReplacementOptions
*/
#define QDBusConnectionInterface_DontAllowReplacement                0
#define QDBusConnectionInterface_AllowReplacement                    1

/*
enum QDBusConnectionInterface::RegisterServiceReply
*/
#define QDBusConnectionInterface_ServiceNotRegistered                0
#define QDBusConnectionInterface_ServiceRegistered                   1
#define QDBusConnectionInterface_ServiceQueued                       2
