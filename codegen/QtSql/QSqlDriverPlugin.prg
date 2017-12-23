$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverPlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlDriver>

$deleteMethod

$prototype=virtual QSqlDriver * create ( const QString & key ) = 0
$virtualMethod=|QSqlDriver *|create|const QString &

#pragma ENDDUMP
