$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
%% REQUEST QQMLLISTPROPERTY<QOBJECT>
REQUEST QQMLWEBCHANNELATTACHED
#endif

CLASS QQmlWebChannel INHERIT QWebChannel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD registerObjects
   METHOD registeredObjects
   METHOD transports
   METHOD qmlAttachedProperties
   METHOD connectTo
   METHOD disconnectFrom

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QQmlWebChannel(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
Q_INVOKABLE void registerObjects(const QVariantMap &objects)
*/
$method=5,4,0|void|registerObjects|const QVariantMap &

/*
QQmlListProperty<QObject> registeredObjects()
*/
$method=5,4,0|QQmlListProperty<QObject>|registeredObjects|

/*
QQmlListProperty<QObject> transports()
*/
$method=5,4,0|QQmlListProperty<QObject>|transports|

/*
static QQmlWebChannelAttached *qmlAttachedProperties(QObject *obj)
*/
$staticMethod=5,4,0|QQmlWebChannelAttached *|qmlAttachedProperties|QObject *

/*
Q_INVOKABLE void connectTo(QObject *transport)
*/
$method=5,4,0|void|connectTo|QObject *

/*
Q_INVOKABLE void disconnectFrom(QObject *transport)
*/
$method=5,4,0|void|disconnectFrom|QObject *

#pragma ENDDUMP
