$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHelpEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & globalPos () const
$method=|const QPoint &|globalPos|

$prototype=int globalX () const
$method=|int|globalX|

$prototype=int globalY () const
$method=|int|globalY|

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

#pragma ENDDUMP
