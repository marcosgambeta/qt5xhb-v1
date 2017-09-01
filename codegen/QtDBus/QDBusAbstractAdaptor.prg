$header

#include "hbclass.ch"

CLASS QDBusAbstractAdaptor INHERIT QObject

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusAbstractAdaptor(QObject *parent)
*/
$constructor=|new|QObject *

$deleteMethod

#pragma ENDDUMP
