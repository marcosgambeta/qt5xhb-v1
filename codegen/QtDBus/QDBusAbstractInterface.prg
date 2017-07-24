$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSCONNECTION
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
#endif

CLASS QDBusAbstractInterface INHERIT QDBusAbstractInterfaceBase

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isValid
   METHOD connection
   METHOD service
   METHOD path
   METHOD interface
   METHOD lastError
   METHOD setTimeout
   METHOD timeout
   METHOD call
   METHOD callWithArgumentList
   METHOD callWithCallback
   METHOD asyncCall
   METHOD asyncCallWithArgumentList

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QDBusConnection connection() const
*/
$method=|QDBusConnection|connection|

/*
QString service() const
*/
$method=|QString|service|

/*
QString path() const
*/
$method=|QString|path|

/*
QString interface() const
*/
$method=|QString|interface|

/*
QDBusError lastError() const
*/
$method=|QDBusError|lastError|

/*
void setTimeout(int timeout)
*/
$method=|void|setTimeout|int

/*
int timeout() const
*/
$method=|int|timeout|

/*
QDBusMessage call(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
*/
$internalMethod=|QDBusMessage|call,call1|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

/*
QDBusMessage call(QDBus::CallMode mode,const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
*/
$internalMethod=|QDBusMessage|call,call2|QDBus::CallMode,const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

//[1]QDBusMessage call(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
//[2]QDBusMessage call(QDBus::CallMode mode,const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALL )
{
  // TODO: implementar
}

/*
QDBusMessage callWithArgumentList(QDBus::CallMode mode,const QString &method,const QList<QVariant> &args)
*/
$method=|QDBusMessage|callWithArgumentList|QDBus::CallMode,const QString &,const QList<QVariant> &

/*
bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member, const char *errorSlot)
*/
$internalMethod=|bool|callWithCallback,callWithCallback1|const QString &,const QList<QVariant> &,QObject *,const char *,const char *

/*
bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member)
*/
$internalMethod=|bool|callWithCallback,callWithCallback2|const QString &,const QList<QVariant> &,QObject *,const char *

//[1]bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member, const char *errorSlot)
//[2]bool callWithCallback(const QString &method,const QList<QVariant> &args,QObject *receiver, const char *member)

HB_FUNC_STATIC( QDBUSABSTRACTINTERFACE_CALLWITHCALLBACK )
{
  // TODO: implementar
}

/*
QDBusPendingCall asyncCall(const QString &method,const QVariant &arg1 = QVariant(),const QVariant &arg2 = QVariant(),const QVariant &arg3 = QVariant(),const QVariant &arg4 = QVariant(),const QVariant &arg5 = QVariant(),const QVariant &arg6 = QVariant(),const QVariant &arg7 = QVariant(),const QVariant &arg8 = QVariant())
*/
$method=|QDBusPendingCall|asyncCall|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

/*
QDBusPendingCall asyncCallWithArgumentList(const QString &method,const QList<QVariant> &args)
*/
$method=|QDBusPendingCall|asyncCallWithArgumentList|const QString &,const QList<QVariant> &

#pragma ENDDUMP
