$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFrame INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD frameRect
   METHOD frameShadow
   METHOD frameShape
   METHOD frameStyle
   METHOD frameWidth
   METHOD lineWidth
   METHOD midLineWidth
   METHOD setFrameRect
   METHOD setFrameShadow
   METHOD setFrameShape
   METHOD setFrameStyle
   METHOD setLineWidth
   METHOD setMidLineWidth
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFrame ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
QRect frameRect () const
*/
$method=|QRect|frameRect|

/*
Shadow frameShadow () const
*/
$method=|QFrame::Shadow|frameShadow|

/*
Shape frameShape () const
*/
$method=|QFrame::Shape|frameShape|

/*
int frameStyle () const
*/
$method=|int|frameStyle|

/*
int frameWidth () const
*/
$method=|int|frameWidth|

/*
int lineWidth () const
*/
$method=|int|lineWidth|

/*
int midLineWidth () const
*/
$method=|int|midLineWidth|

/*
void setFrameRect ( const QRect & )
*/
$method=|void|setFrameRect|const QRect &

/*
void setFrameShadow ( Shadow )
*/
$method=|void|setFrameShadow|QFrame::Shadow

/*
void setFrameShape ( Shape )
*/
$method=|void|setFrameShape|QFrame::Shape

/*
void setFrameStyle ( int style )
*/
$method=|void|setFrameStyle|int

/*
void setLineWidth ( int )
*/
$method=|void|setLineWidth|int

/*
void setMidLineWidth ( int )
*/
$method=|void|setMidLineWidth|int

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
