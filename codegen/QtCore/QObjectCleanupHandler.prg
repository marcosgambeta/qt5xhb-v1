$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QObjectCleanupHandler INHERIT QObject

   METHOD new
   METHOD delete
   METHOD add
   METHOD remove
   METHOD isEmpty
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QObjectCleanupHandler()
*/
$constructor=|new|

$deleteMethod

/*
QObject* add(QObject* object)
*/
$method=|QObject *|add|QObject *

/*
void remove(QObject *object)
*/
$method=|void|remove|QObject *

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
void clear()
*/
$method=|void|clear|

#pragma ENDDUMP
