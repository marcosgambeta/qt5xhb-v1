$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHelpEvent INHERIT QEvent

   DATA self_destruction INIT .F.

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

/*
QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
*/
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

/*
const QPoint & globalPos () const
*/
$method=|const QPoint &|globalPos|

/*
int globalX () const
*/
$method=|int|globalX|

/*
int globalY () const
*/
$method=|int|globalY|

/*
const QPoint & pos () const
*/
$method=|const QPoint &|pos|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

#pragma ENDDUMP
