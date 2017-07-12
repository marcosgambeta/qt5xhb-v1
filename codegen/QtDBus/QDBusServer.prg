$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
#endif

CLASS QDBusServer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD lastError
   METHOD address

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusServer(const QString &address, QObject *parent = 0)
*/
$internalConstructor=|new1|const QString &,QObject *=0

/*
QDBusServer(QObject *parent = 0)
*/
$internalConstructor=|new2|QObject *=0

//[1]QDBusServer(const QString &address, QObject *parent = 0)
//[2]QDBusServer(QObject *parent = 0)

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
bool isConnected() const
*/
$method=|bool|isConnected|

/*
QDBusError lastError() const
*/
$method=|QDBusError|lastError|

/*
QString address() const
*/
$method=|QString|address|

#pragma ENDDUMP
