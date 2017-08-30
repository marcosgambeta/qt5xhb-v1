$header

#include "hbclass.ch"

CLASS QWebChannel INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
explicit QWebChannel(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
Q_INVOKABLE void registerObject(const QString &id, QObject *object)
*/
$method=5,4,0|void|registerObject|const QString &,QObject *

/*
Q_INVOKABLE void deregisterObject(QObject *object)
*/
$method=5,4,0|void|deregisterObject|QObject *

/*
bool blockUpdates() const
*/
$method=5,4,0|bool|blockUpdates|

/*
void setBlockUpdates(bool block)
*/
$method=5,4,0|void|setBlockUpdates|bool

/*
void connectTo(QWebChannelAbstractTransport *transport)
*/
$method=5,4,0|void|connectTo|QWebChannelAbstractTransport *

/*
void disconnectFrom(QWebChannelAbstractTransport *transport)
*/
$method=5,4,0|void|disconnectFrom|QWebChannelAbstractTransport *

#pragma ENDDUMP
