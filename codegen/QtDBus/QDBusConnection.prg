%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDBusError>
#include <QDBusMessage>
#include <QDBusPendingCall>
#include <QDBusConnectionInterface>

$prototype=QDBusConnection(const QString &name)
$internalConstructor=|new1|const QString &

$prototype=QDBusConnection(const QDBusConnection &other)
$internalConstructor=|new2|const QDBusConnection &

//[1]QDBusConnection(const QString &name)
//[2]QDBusConnection(const QDBusConnection &other)

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototype=bool isConnected() const
$method=|bool|isConnected|

$prototype=QString baseService() const
$method=|QString|baseService|

$prototype=QDBusError lastError() const
$method=|QDBusError|lastError|

$prototype=QString name() const
$method=|QString|name|

$prototype=ConnectionCapabilities connectionCapabilities() const
$method=|QDBusConnection::ConnectionCapabilities|connectionCapabilities|

$prototype=bool send(const QDBusMessage &message) const
$method=|bool|send|const QDBusMessage &

$prototype=bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
$internalMethod=|bool|callWithCallback,callWithCallback1|const QDBusMessage &,QObject *,const char *,const char *,int=-1

$prototype=bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
$internalMethod=|bool|callWithCallback,callWithCallback2|const QDBusMessage &,QObject *,const char *,int=-1

//[1]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
//[2]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const

HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK )
{
  // TODO: implementar
}
$addMethod=callWithCallback

$prototype=QDBusMessage call(const QDBusMessage &message, QDBus::CallMode mode = QDBus::Block,int timeout = -1) const
$method=|QDBusMessage|call|const QDBusMessage &,QDBus::CallMode=QDBus::Block,int=-1

$prototype=QDBusPendingCall asyncCall(const QDBusMessage &message, int timeout = -1) const
$method=|QDBusPendingCall|asyncCall|const QDBusMessage &,int=-1

$prototype=bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
$internalMethod=|bool|connect,connect1|const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|connect,connect2|const QString &,const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|connect,connect3|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QString &,QObject *,const char *

//[1]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT )
{
  // TODO: implementar
}
$addMethod=connect

$prototype=bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
$internalMethod=|bool|disconnect,disconnect1|const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|disconnect,disconnect2|const QString &,const QString &,const QString &,const QString &,const QString &,QObject *,const char *

$prototype=bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
$internalMethod=|bool|disconnect,disconnect3|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QString &,QObject *,const char *

//[1]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT )
{
  // TODO: implementar
}
$addMethod=disconnect

$prototype=bool registerObject(const QString &path, QObject *object,RegisterOptions options = ExportAdaptors)
$method=|bool|registerObject|const QString &,QObject *,QDBusConnection::RegisterOptions=QDBusConnection::ExportAdaptors

$prototype=void unregisterObject(const QString &path, UnregisterMode mode = UnregisterNode)
$method=|void|unregisterObject|const QString &,QDBusConnection::UnregisterMode=QDBusConnection::UnregisterNode

$prototype=QObject *objectRegisteredAt(const QString &path) const
$method=|QObject *|objectRegisteredAt|const QString &

$prototype=bool registerVirtualObject(const QString &path, QDBusVirtualObject *object,VirtualObjectRegisterOption options = SingleNode)
%% TODO: check
%% $method=|bool|registerVirtualObject|const QString &,QDBusVirtualObject *,VirtualObjectRegisterOption=SingleNode

$prototype=bool registerService(const QString &serviceName)
$method=|bool|registerService|const QString &

$prototype=bool unregisterService(const QString &serviceName)
$method=|bool|unregisterService|const QString &

$prototype=QDBusConnectionInterface *interface() const
$method=|QDBusConnectionInterface *|interface|

$prototype=void *internalPointer() const
$method=|void *|internalPointer|

$prototype=static QDBusConnection connectToBus(BusType type, const QString &name)
$internalStaticMethod=|QDBusConnection|connectToBus,connectToBus1|QDBusConnection::BusType,const QString &

$prototype=static QDBusConnection connectToBus(const QString &address, const QString &name)
$internalStaticMethod=|QDBusConnection|connectToBus,connectToBus2|const QString &,const QString &

//[1]static QDBusConnection connectToBus(BusType type, const QString &name)
//[2]static QDBusConnection connectToBus(const QString &address, const QString &name)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS )
{
  // TODO: implementar
}
$addMethod=connectToBus

$prototype=static QDBusConnection connectToPeer(const QString &address, const QString &name)
$staticMethod=|QDBusConnection|connectToPeer|const QString &,const QString &

$prototype=static void disconnectFromBus(const QString &name)
$staticMethod=|void|disconnectFromBus|const QString &

$prototype=static void disconnectFromPeer(const QString &name)
$staticMethod=|void|disconnectFromPeer|const QString &

$prototype=static QByteArray localMachineId()
$staticMethod=|QByteArray|localMachineId|

$prototype=static QDBusConnection sessionBus()
$staticMethod=|QDBusConnection|sessionBus|

$prototype=static QDBusConnection systemBus()
$staticMethod=|QDBusConnection|systemBus|

$prototype=static QDBusConnection sender()
$staticMethod=|QDBusConnection|sender|

$extraMethods

#pragma ENDDUMP
