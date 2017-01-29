/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
