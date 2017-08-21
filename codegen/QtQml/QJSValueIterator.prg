$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSVALUE
#endif

CLASS QJSValueIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hasNext
   METHOD name
   METHOD next
   METHOD value

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
QJSValueIterator(const QJSValue & object)
*/
$constructor=|new|const QJSValue &

$deleteMethod

/*
bool hasNext() const
*/
$method=|bool|hasNext|

/*
QString name() const
*/
$method=|QString|name|

/*
bool next()
*/
$method=|bool|next|

/*
QJSValue value() const
*/
$method=|QJSValue|value|

$extraMethods

#pragma ENDDUMP
