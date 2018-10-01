%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDBusAbstractInterfaceBase

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDBusPendingCall>

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QDBusConnection connection() const
$method=|QDBusConnection|connection|

$prototype=QString service() const
$method=|QString|service|

$prototype=QString path() const
$method=|QString|path|

$prototype=QString interface() const
$method=|QString|interface|

$prototype=QDBusError lastError() const
$method=|QDBusError|lastError|

$prototype=void setTimeout(int timeout)
$method=|void|setTimeout|int

$prototype=int timeout() const
$method=|int|timeout|

$prototype=QDBusMessage call(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
$internalMethod=|QDBusMessage|call,call1|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QDBusMessage call(QDBus::CallMode mode,const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
$internalMethod=|QDBusMessage|call,call2|QDBus::CallMode,const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

//[1]QDBusMessage call(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
//[2]QDBusMessage call(QDBus::CallMode mode,const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALL )
{
  // TODO: implementar
}
$addMethod=call

$prototype=QDBusMessage callWithArgumentList(QDBus::CallMode mode,const QString &method,const QList<QVariant> &args)
$method=|QDBusMessage|callWithArgumentList|QDBus::CallMode,const QString &,const QList<QVariant> &

$prototype=bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member, const char *errorSlot)
$internalMethod=|bool|callWithCallback,callWithCallback1|const QString &,const QList<QVariant> &,QObject *,const char *,const char *

$prototype=bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member)
$internalMethod=|bool|callWithCallback,callWithCallback2|const QString &,const QList<QVariant> &,QObject *,const char *

//[1]bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member, const char *errorSlot)
//[2]bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member)

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK )
{
  // TODO: implementar
}
$addMethod=callWithCallback

$prototype=QDBusPendingCall asyncCall(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
$method=|QDBusPendingCall|asyncCall|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QDBusPendingCall asyncCallWithArgumentList(const QString &method,const QList<QVariant> &args)
$method=|QDBusPendingCall|asyncCallWithArgumentList|const QString &,const QList<QVariant> &

#pragma ENDDUMP
