%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTabletEvent(Type type, const QPointF & pos, const QPointF & globalPos, int device, int pointerType, qreal pressure, int xTilt, int yTilt, qreal tangentialPressure, qreal rotation, int z, Qt::KeyboardModifiers keyState, qint64 uniqueID)
$constructor=|new|QEvent::Type,const QPointF &,const QPointF &,int,int,qreal,int,int,qreal,qreal,int,Qt::KeyboardModifiers,qint64

$deleteMethod

$prototype=TabletDevice device() const
$method=|QTabletEvent::TabletDevice|device|

$prototype=const QPoint globalPos() const
$method=|const QPoint|globalPos|

$prototype=const QPointF & globalPosF() const
$method=|const QPointF &|globalPosF|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=qreal hiResGlobalX() const
$method=|qreal|hiResGlobalX|

$prototype=qreal hiResGlobalY() const
$method=|qreal|hiResGlobalY|

$prototype=PointerType pointerType() const
$method=|QTabletEvent::PointerType|pointerType|

$prototype=const QPoint pos() const
$method=|const QPoint|pos|

$prototype=const QPointF & posF() const
$method=|const QPointF &|posF|

$prototype=qreal pressure() const
$method=|qreal|pressure|

$prototype=qreal rotation() const
$method=|qreal|rotation|

$prototype=qreal tangentialPressure() const
$method=|qreal|tangentialPressure|

$prototype=qint64 uniqueId() const
$method=|qint64|uniqueId|

$prototype=int x() const
$method=|int|x|

$prototype=int xTilt() const
$method=|int|xTilt|

$prototype=int y() const
$method=|int|y|

$prototype=int yTilt() const
$method=|int|yTilt|

$prototype=int z() const
$method=|int|z|

#pragma ENDDUMP
