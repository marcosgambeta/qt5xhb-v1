$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeGrip INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD setVisible
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSizeGrip ( QWidget * parent )
*/
$constructor=|new|QWidget *

$deleteMethod

/*
virtual void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
