$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessiblePlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAccessibleInterface *create(const QString &key, QObject *object) = 0
$virtualMethod=|QAccessibleInterface *|create|const QString &,QObject *

#pragma ENDDUMP
