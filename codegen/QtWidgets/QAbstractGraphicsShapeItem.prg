$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH
#endif

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   METHOD delete
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QBrush>
#include <QPen>

$deleteMethod

/*
QBrush brush () const
*/
$method=|QBrush|brush|

/*
void setBrush ( const QBrush & brush )
*/
$method=|void|setBrush|const QBrush &

/*
QPen pen () const
*/
$method=|QPen|pen|

/*
void setPen ( const QPen & pen )
*/
$method=|void|setPen|const QPen &

/*
bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$method=|bool|isObscuredBy|const QGraphicsItem *

/*
QPainterPath opaqueArea () const
*/
$method=|QPainterPath|opaqueArea|

#pragma ENDDUMP
