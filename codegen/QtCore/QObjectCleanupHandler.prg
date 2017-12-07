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

$prototype=QObjectCleanupHandler()
$constructor=|new|

$deleteMethod

$prototype=QObject* add(QObject* object)
$method=|QObject *|add|QObject *

$prototype=void remove(QObject *object)
$method=|void|remove|QObject *

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=void clear()
$method=|void|clear|

#pragma ENDDUMP
