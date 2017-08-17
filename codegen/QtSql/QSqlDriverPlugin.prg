$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlDriver>

$deleteMethod

/*
virtual QSqlDriver * create ( const QString & key ) = 0
*/
$method=|QSqlDriver *|create|const QString &

#pragma ENDDUMP
