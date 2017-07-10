$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QChildEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD added
   METHOD child
   METHOD polished
   METHOD removed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QChildEvent(Type type, QObject * child)
*/
$constructor=|new|QEvent::Type,QObject *

$deleteMethod

/*
bool added() const
*/
$method=|bool|added|

/*
QObject * child() const
*/
$method=|QObject *|child|

/*
bool polished() const
*/
$method=|bool|polished|

/*
bool removed() const
*/
$method=|bool|removed|

#pragma ENDDUMP
