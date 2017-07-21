$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD href

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWhatsThisClickedEvent(const QString &href)
*/
$constructor=|new|const QString &

$deleteMethod

/*
QString href() const
*/
$method=|QString|href|

#pragma ENDDUMP
