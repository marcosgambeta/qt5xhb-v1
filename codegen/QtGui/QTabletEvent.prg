$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTabletEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD device
   METHOD globalPos
   METHOD globalPosF
   METHOD globalX
   METHOD globalY
   METHOD hiResGlobalX
   METHOD hiResGlobalY
   METHOD pointerType
   METHOD pos
   METHOD posF
   METHOD pressure
   METHOD rotation
   METHOD tangentialPressure
   METHOD uniqueId
   METHOD x
   METHOD xTilt
   METHOD y
   METHOD yTilt
   METHOD z

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTabletEvent(Type type, const QPointF & pos, const QPointF & globalPos, int device, int pointerType, qreal pressure, int xTilt, int yTilt, qreal tangentialPressure, qreal rotation, int z, Qt::KeyboardModifiers keyState, qint64 uniqueID)
*/
$constructor=|new|QEvent::Type,const QPointF &,const QPointF &,int,int,qreal,int,int,qreal,qreal,int,Qt::KeyboardModifiers,qint64

$deleteMethod

/*
TabletDevice device() const
*/
$method=|QTabletEvent::TabletDevice|device|

/*
const QPoint globalPos() const
*/
$method=|const QPoint|globalPos|

/*
const QPointF & globalPosF() const
*/
$method=|const QPointF &|globalPosF|

/*
int globalX() const
*/
$method=|int|globalX|

/*
int globalY() const
*/
$method=|int|globalY|

/*
qreal hiResGlobalX() const
*/
$method=|qreal|hiResGlobalX|

/*
qreal hiResGlobalY() const
*/
$method=|qreal|hiResGlobalY|

/*
PointerType pointerType() const
*/
$method=|QTabletEvent::PointerType|pointerType|

/*
const QPoint pos() const
*/
$method=|const QPoint|pos|

/*
const QPointF & posF() const
*/
$method=|const QPointF &|posF|

/*
qreal pressure() const
*/
$method=|qreal|pressure|

/*
qreal rotation() const
*/
$method=|qreal|rotation|

/*
qreal tangentialPressure() const
*/
$method=|qreal|tangentialPressure|

/*
qint64 uniqueId() const
*/
$method=|qint64|uniqueId|

/*
int x() const
*/
$method=|int|x|

/*
int xTilt() const
*/
$method=|int|xTilt|

/*
int y() const
*/
$method=|int|y|

/*
int yTilt() const
*/
$method=|int|yTilt|

/*
int z() const
*/
$method=|int|z|

#pragma ENDDUMP
