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

$prototype=QSizeGrip ( QWidget * parent )
$constructor=|new|QWidget *

$deleteMethod

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
