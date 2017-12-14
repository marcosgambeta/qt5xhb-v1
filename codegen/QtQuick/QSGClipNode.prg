$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QSGClipNode INHERIT QSGBasicGeometryNode

   METHOD new
   METHOD delete
   METHOD clipRect
   METHOD isRectangular
   METHOD setClipRect
   METHOD setIsRectangular

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGClipNode()
$constructor=|new|

$deleteMethod

$prototype=QRectF clipRect() const
$method=|QRectF|clipRect|

$prototype=bool isRectangular() const
$method=|bool|isRectangular|

$prototype=void setClipRect(const QRectF & rect)
$method=|void|setClipRect|const QRectF &

$prototype=void setIsRectangular(bool rectHint)
$method=|void|setIsRectangular|bool

#pragma ENDDUMP
