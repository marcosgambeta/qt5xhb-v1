$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QWidgetItemV2 INHERIT QWidgetItem

   METHOD new
   METHOD delete
   METHOD sizeHint
   METHOD minimumSize
   METHOD maximumSize
   METHOD heightForWidth

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetItemV2(QWidget *widget)
$constructor=|new|QWidget *

$deleteMethod

$prototype=QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=QSize minimumSize() const
$method=|QSize|minimumSize|

$prototype=QSize maximumSize() const
$method=|QSize|maximumSize|

$prototype=int heightForWidth(int width) const
$method=|int|heightForWidth|int

#pragma ENDDUMP
