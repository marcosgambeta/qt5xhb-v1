$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD href

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWhatsThisClickedEvent(const QString &href)
$constructor=|new|const QString &

$deleteMethod

$prototype=QString href() const
$method=|QString|href|

#pragma ENDDUMP
