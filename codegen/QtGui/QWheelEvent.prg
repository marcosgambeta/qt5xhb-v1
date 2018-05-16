%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

$beginClassFrom=QInputEvent

   METHOD new
   METHOD delete
   METHOD pixelDelta
   METHOD angleDelta
   METHOD delta
   METHOD orientation
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD posF
   METHOD globalPosF
   METHOD buttons

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
$internalConstructor=|new1|const QPointF &,int,Qt::MouseButtons,Qt::KeyboardModifiers,Qt::Orientation=Qt::Vertical

$prototype=QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
$internalConstructor=|new2|const QPointF &,const QPointF &,int,Qt::MouseButtons,Qt::KeyboardModifiers,Qt::Orientation=Qt::Vertical

$prototype=QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new3|const QPointF &,const QPointF &,QPoint,QPoint,int,Qt::Orientation,Qt::MouseButtons,Qt::KeyboardModifiers

//[1]QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical);
//[2]QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical);
//[3]QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers);

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN(4,5) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QWheelEvent_new1();
  }
  else if( ISBETWEEN(5,6) && ISQPOINTF(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QWheelEvent_new2();
  }
  else if( ISNUMPAR(8) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINT(3) && ISQPOINT(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) )
  {
    QWheelEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QPoint pixelDelta() const
$method=|QPoint|pixelDelta|

$prototype=QPoint angleDelta() const
$method=|QPoint|angleDelta|

$prototype=int delta() const
$method=|int|delta|

$prototype=Qt::Orientation orientation() const
$method=|Qt::Orientation|orientation|

$prototype=QPoint pos() const
$method=|QPoint|pos|

$prototype=QPoint globalPos() const
$method=|QPoint|globalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=const QPointF &posF() const
$method=|const QPointF &|posF|

$prototype=const QPointF &globalPosF() const
$method=|const QPointF &|globalPosF|

$prototype=Qt::MouseButtons buttons() const
$method=|Qt::MouseButtons|buttons|

#pragma ENDDUMP
