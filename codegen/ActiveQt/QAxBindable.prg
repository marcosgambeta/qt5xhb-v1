$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
#endif

CLASS QAxBindable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD readData
   METHOD reportError
   METHOD writeData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAxBindable ()
*/
$constructor=|new|

$deleteMethod

/*
virtual QAxAggregated * createAggregate ()
*/
$method=|QAxAggregated *|createAggregate|

/*
virtual bool readData ( QIODevice * source, const QString & format )
*/
$method=|bool|readData|QIODevice *,const QString &

/*
void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
*/
$method=|void|reportError|int,const QString &,const QString &,const QString &=QString()

/*
virtual bool writeData ( QIODevice * sink )
*/
$method=|bool|writeData|QIODevice *

$extraMethods

#pragma ENDDUMP
