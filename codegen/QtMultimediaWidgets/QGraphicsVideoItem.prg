$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QGraphicsVideoItem INHERIT QGraphicsObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mediaObject
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
   METHOD offset
   METHOD setOffset
   METHOD size
   METHOD setSize
   METHOD nativeSize
   METHOD boundingRect
   METHOD paint

   METHOD onNativeSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsVideoItem(QGraphicsItem *parent = 0)
*/
$constructor=|new|QGraphicsItem *=0

$deleteMethod

/*
QMediaObject *mediaObject() const
*/
$method=|QMediaObject *|mediaObject|

/*
Qt::AspectRatioMode aspectRatioMode() const
*/
$method=|Qt::AspectRatioMode|aspectRatioMode|

/*
void setAspectRatioMode(Qt::AspectRatioMode mode)
*/
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

/*
QPointF offset() const
*/
$method=|QPointF|offset|

/*
void setOffset(const QPointF &offset)
*/
$method=|void|setOffset|const QPointF &

/*
QSizeF size() const
*/
$method=|QSizeF|size|

/*
void setSize(const QSizeF &size)
*/
$method=|void|setSize|const QSizeF &

/*
QSizeF nativeSize() const
*/
$method=|QSizeF|nativeSize|

/*
QRectF boundingRect() const
*/
$method=|QRectF|boundingRect|

/*
void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0)
*/
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

#pragma ENDDUMP
