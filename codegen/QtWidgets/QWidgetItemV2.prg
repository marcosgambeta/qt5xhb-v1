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

/*
QWidgetItemV2(QWidget *widget)
*/
$constructor=|new|QWidget *

$deleteMethod

/*
QSize sizeHint() const
*/
$method=|QSize|sizeHint|

/*
QSize minimumSize() const
*/
$method=|QSize|minimumSize|

/*
QSize maximumSize() const
*/
$method=|QSize|maximumSize|

/*
int heightForWidth(int width) const
*/
$method=|int|heightForWidth|int

#pragma ENDDUMP
