$header

#include "hbclass.ch"

%% TODO: corrigir
%% #ifndef QT5XHB_NO_REQUESTS
%% REQUEST QDBUSREPLY<QSTRINGLIST>
%% REQUEST QDBUSREPLY<BOOL>
%% REQUEST QDBUSREPLY<QSTRING>
%% REQUEST QDBUSREPLY<UINT>
%% REQUEST QDBUSREPLY<VOID>
%% #endif

CLASS QDBusConnectionInterface INHERIT QDBusAbstractInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD registeredServiceNames
   METHOD isServiceRegistered
   METHOD serviceOwner
   METHOD unregisterService
   METHOD registerService
   METHOD servicePid
   METHOD serviceUid
   METHOD startService

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged
   METHOD onCallWithCallbackFailed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent)
*/
$constructor=|new|const QDBusConnection &,QObject *

$deleteMethod

/*
QDBusReply<QStringList> registeredServiceNames() const
*/
$method=|QDBusReply<QStringList>|registeredServiceNames|

/*
QDBusReply<bool> isServiceRegistered(const QString &serviceName) const
*/
$method=|QDBusReply<bool>|isServiceRegistered|const QString &

/*
QDBusReply<QString> serviceOwner(const QString &name) const
*/
$method=|QDBusReply<QString>|serviceOwner|const QString &

/*
QDBusReply<bool> unregisterService(const QString &serviceName)
*/
$method=|QDBusReply<bool>|unregisterService|const QString &

/*
QDBusReply<QDBusConnectionInterface::RegisterServiceReply> registerService(const QString &serviceName,ServiceQueueOptions qoption = DontQueueService,ServiceReplacementOptions roption = DontAllowReplacement)
*/
$method=|QDBusReply<QDBusConnectionInterface::RegisterServiceReply>|registerService|const QString &,QDBusConnectionInterface::ServiceQueueOptions=QDBusConnectionInterface::DontQueueService,QDBusConnectionInterface::ServiceReplacementOptions=QDBusConnectionInterface::DontAllowReplacement

/*
QDBusReply<uint> servicePid(const QString &serviceName) const
*/
$method=|QDBusReply<uint>|servicePid|const QString &

/*
QDBusReply<uint> serviceUid(const QString &serviceName) const
*/
$method=|QDBusReply<uint>|serviceUid|const QString &

/*
QDBusReply<void> startService(const QString &name)
*/
$method=|QDBusReply<void>|startService|const QString &

#pragma ENDDUMP
