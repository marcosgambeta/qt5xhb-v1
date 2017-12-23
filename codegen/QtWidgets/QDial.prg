$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDial INHERIT QAbstractSlider

   METHOD new
   METHOD delete
   METHOD notchSize
   METHOD notchTarget
   METHOD notchesVisible
   METHOD setNotchTarget
   METHOD wrapping
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setNotchesVisible
   METHOD setWrapping

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDial ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int notchSize () const
$method=|int|notchSize|

$prototype=qreal notchTarget () const
$method=|qreal|notchTarget|

$prototype=bool notchesVisible () const
$method=|bool|notchesVisible|

$prototype=void setNotchTarget ( double target )
$method=|void|setNotchTarget|double

$prototype=bool wrapping () const
$method=|bool|wrapping|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setNotchesVisible ( bool visible )
$method=|void|setNotchesVisible|bool

$prototype=void setWrapping ( bool on )
$method=|void|setWrapping|bool

#pragma ENDDUMP
