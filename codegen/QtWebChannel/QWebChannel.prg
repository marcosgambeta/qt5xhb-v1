$header

#include "hbclass.ch"

CLASS QWebChannel INHERIT QObject

   METHOD new
   METHOD delete
   METHOD registerObject
   METHOD deregisterObject
   METHOD blockUpdates
   METHOD setBlockUpdates
   METHOD connectTo
   METHOD disconnectFrom
   METHOD obBlockUpdatesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QWebChannel(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=Q_INVOKABLE void registerObject(const QString &id, QObject *object)
$method=5,4,0|void|registerObject|const QString &,QObject *

$prototype=Q_INVOKABLE void deregisterObject(QObject *object)
$method=5,4,0|void|deregisterObject|QObject *

$prototype=bool blockUpdates() const
$method=5,4,0|bool|blockUpdates|

$prototype=void setBlockUpdates(bool block)
$method=5,4,0|void|setBlockUpdates|bool

$prototype=void connectTo(QWebChannelAbstractTransport *transport)
$method=5,4,0|void|connectTo|QWebChannelAbstractTransport *

$prototype=void disconnectFrom(QWebChannelAbstractTransport *transport)
$method=5,4,0|void|disconnectFrom|QWebChannelAbstractTransport *

#pragma ENDDUMP
