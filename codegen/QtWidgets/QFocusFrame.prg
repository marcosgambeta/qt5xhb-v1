$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QFocusFrame INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD setWidget
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFocusFrame ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

#pragma ENDDUMP
