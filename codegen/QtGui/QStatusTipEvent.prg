$header

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD tip

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStatusTipEvent(const QString &tip)
*/
$constructor=|new|const QString &

$deleteMethod

/*
QString tip() const
*/
$method=|QString|tip|

#pragma ENDDUMP
