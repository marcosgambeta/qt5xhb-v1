$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QMoveEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
*/
$constructor=|new|const QPoint &,const QPoint &

$deleteMethod

/*
const QPoint & oldPos () const
*/
$method=|const QPoint &|oldPos|

/*
const QPoint & pos () const
*/
$method=|const QPoint &|pos|

#pragma ENDDUMP
