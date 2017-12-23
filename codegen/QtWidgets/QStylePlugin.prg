$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

CLASS QStylePlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QStyle *create(const QString &key) = 0
$virtualMethod=|QStyle *|create|const QString &

#pragma ENDDUMP
