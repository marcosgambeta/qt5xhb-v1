$header

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD tip

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStatusTipEvent(const QString &tip)
$constructor=|new|const QString &

$deleteMethod

$prototype=QString tip() const
$method=|QString|tip|

#pragma ENDDUMP
