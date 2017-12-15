$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
%% REQUEST QQMLLISTPROPERTY<QOBJECT>
REQUEST QQMLWEBCHANNELATTACHED
#endif

CLASS QQmlWebChannel INHERIT QWebChannel

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

$prototype=explicit QQmlWebChannel(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=Q_INVOKABLE void registerObjects(const QVariantMap &objects)
$method=5,4,0|void|registerObjects|const QVariantMap &

$prototype=QQmlListProperty<QObject> registeredObjects()
$method=5,4,0|QQmlListProperty<QObject>|registeredObjects|

$prototype=QQmlListProperty<QObject> transports()
$method=5,4,0|QQmlListProperty<QObject>|transports|

$prototype=static QQmlWebChannelAttached *qmlAttachedProperties(QObject *obj)
$staticMethod=5,4,0|QQmlWebChannelAttached *|qmlAttachedProperties|QObject *

$prototype=Q_INVOKABLE void connectTo(QObject *transport)
$method=5,4,0|void|connectTo|QObject *

$prototype=Q_INVOKABLE void disconnectFrom(QObject *transport)
$method=5,4,0|void|disconnectFrom|QObject *

#pragma ENDDUMP
