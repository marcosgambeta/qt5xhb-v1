$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsOpacityEffect ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
qreal opacity () const
*/
$method=|qreal|opacity|

/*
QBrush opacityMask () const
*/
$method=|QBrush|opacityMask|

/*
void setOpacity ( qreal opacity )
*/
$method=|void|setOpacity|qreal

/*
void setOpacityMask ( const QBrush & mask )
*/
$method=|void|setOpacityMask|const QBrush &

#pragma ENDDUMP
