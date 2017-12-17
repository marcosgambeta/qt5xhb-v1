$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsLayout INHERIT QGraphicsLayoutItem

   METHOD delete
   METHOD activate
   METHOD count
   METHOD invalidate
   METHOD isActivated
   METHOD itemAt
   METHOD removeAt
   METHOD setContentsMargins
   METHOD widgetEvent
   METHOD getContentsMargins
   METHOD updateGeometry
   METHOD instantInvalidatePropagation
   METHOD setInstantInvalidatePropagation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void activate ()
$method=|void|activate|

$prototype=virtual int count () const = 0
$method=|int|count|

$prototype=virtual void invalidate ()
$method=|void|invalidate|

$prototype=bool isActivated () const
$method=|bool|isActivated|

$prototype=virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
$method=|QGraphicsLayoutItem *|itemAt|int

$prototype=virtual void removeAt ( int index ) = 0
$method=|void|removeAt|int

$prototype=void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

$prototype=virtual void widgetEvent ( QEvent * e )
$method=|void|widgetEvent|QEvent *

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$method=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototype=virtual void updateGeometry ()
$method=|void|updateGeometry|

$prototype=static bool instantInvalidatePropagation ()
$staticMethod=|bool|instantInvalidatePropagation|

$prototype=static void setInstantInvalidatePropagation ( bool enable )
$staticMethod=|void|setInstantInvalidatePropagation|bool

#pragma ENDDUMP
