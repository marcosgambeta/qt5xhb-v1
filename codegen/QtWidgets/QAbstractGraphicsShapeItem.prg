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

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototype=QPen pen () const
$method=|QPen|pen|

$prototype=void setPen ( const QPen & pen )
$method=|void|setPen|const QPen &

$prototype=bool isObscuredBy ( const QGraphicsItem * item ) const
$method=|bool|isObscuredBy|const QGraphicsItem *

$prototype=QPainterPath opaqueArea () const
$method=|QPainterPath|opaqueArea|

#pragma ENDDUMP
