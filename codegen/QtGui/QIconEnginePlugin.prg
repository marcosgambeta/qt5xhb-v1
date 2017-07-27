$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICONENGINE
#endif

CLASS QIconEnginePlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QIconEngine * create(const QString & filename = QString()) = 0
*/
$method=|QIconEngine *|create|const QString &=QString()

#pragma ENDDUMP
