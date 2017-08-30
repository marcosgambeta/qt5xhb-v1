$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QSGClipNode INHERIT QSGBasicGeometryNode

   DATA self_destruction INIT .F.

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

/*
QSGClipNode()
*/
$constructor=|new|

$deleteMethod

/*
QRectF clipRect() const
*/
$method=|QRectF|clipRect|

/*
bool isRectangular() const
*/
$method=|bool|isRectangular|

/*
void setClipRect(const QRectF & rect)
*/
$method=|void|setClipRect|const QRectF &

/*
void setIsRectangular(bool rectHint)
*/
$method=|void|setIsRectangular|bool

#pragma ENDDUMP
