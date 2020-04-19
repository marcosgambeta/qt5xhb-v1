%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPointF finalPosition() const
$method=|QPointF|finalPosition|

$prototype=bool handleInput(Input input, const QPointF & position, qint64 timestamp = 0)
$method=|bool|handleInput|QScroller::Input,const QPointF &,qint64=0

$prototype=QPointF pixelPerMeter() const
$method=|QPointF|pixelPerMeter|

$prototype=QScrollerProperties scrollerProperties() const
$method=|QScrollerProperties|scrollerProperties|

$prototype=void setSnapPositionsX(const QList<qreal> & positions)
$internalMethod=|void|setSnapPositionsX,setSnapPositionsX1|const QList<qreal> &

$prototype=void setSnapPositionsX(qreal first, qreal interval)
$internalMethod=|void|setSnapPositionsX,setSnapPositionsX2|qreal,qreal

/*
[1]void setSnapPositionsX(const QList<qreal> & positions)
[2]void setSnapPositionsX(qreal first, qreal interval)
*/

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSX )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QScroller_setSnapPositionsX1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QScroller_setSnapPositionsX2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSnapPositionsX

$prototype=void setSnapPositionsY(const QList<qreal> & positions)
$internalMethod=|void|setSnapPositionsY,setSnapPositionsY1|const QList<qreal> &

$prototype=void setSnapPositionsY(qreal first, qreal interval)
$internalMethod=|void|setSnapPositionsY,setSnapPositionsY2|qreal,qreal

/*
[1]void setSnapPositionsY(const QList<qreal> & positions)
[2]void setSnapPositionsY(qreal first, qreal interval)
*/

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSY )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QScroller_setSnapPositionsY1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QScroller_setSnapPositionsY2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSnapPositionsY

$prototype=State state() const
$method=|QScroller::State|state|

$prototype=void stop()
$method=|void|stop|

$prototype=QObject * target() const
$method=|QObject *|target|

$prototype=QPointF velocity() const
$method=|QPointF|velocity|

$prototype=void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &,qreal,qreal

$prototype=void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)
$internalMethod=|void|ensureVisible,ensureVisible2|const QRectF &,qreal,qreal,int

/*
[1]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
[2]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)
*/

HB_FUNC_STATIC( QSCROLLER_ENSUREVISIBLE )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QScroller_ensureVisible1();
  }
  else if( ISNUMPAR(4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QScroller_ensureVisible2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ensureVisible

$prototype=void resendPrepareEvent()
$method=|void|resendPrepareEvent|

$prototype=void scrollTo(const QPointF & pos)
$internalMethod=|void|scrollTo,scrollTo1|const QPointF &

$prototype=void scrollTo(const QPointF & pos, int scrollTime)
$internalMethod=|void|scrollTo,scrollTo2|const QPointF &,int

/*
[1]void scrollTo(const QPointF & pos)
[2]void scrollTo(const QPointF & pos, int scrollTime)
*/

HB_FUNC_STATIC( QSCROLLER_SCROLLTO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QScroller_scrollTo1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QScroller_scrollTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=scrollTo

$prototype=void setScrollerProperties(const QScrollerProperties & prop)
$method=|void|setScrollerProperties|const QScrollerProperties &

$prototype=static QList<QScroller *> activeScrollers()
$staticMethod=|QList<QScroller *>|activeScrollers|

$prototype=static Qt::GestureType grabGesture(QObject * target, ScrollerGestureType scrollGestureType = TouchGesture)
$staticMethod=|Qt::GestureType|grabGesture|QObject *,QScroller::ScrollerGestureType=QScroller::TouchGesture

$prototype=static Qt::GestureType grabbedGesture(QObject * target)
$staticMethod=|Qt::GestureType|grabbedGesture|QObject *

$prototype=static bool hasScroller(QObject * target)
$staticMethod=|bool|hasScroller|QObject *

$prototype=static QScroller * scroller(QObject * target)
$internalStaticMethod=|QScroller *|scroller,scroller1|QObject *

$prototype=static const QScroller * scroller(const QObject * target)
$internalStaticMethod=|const QScroller *|scroller,scroller2|const QObject *

/*
[1]static QScroller * scroller(QObject * target)
[2]static const QScroller * scroller(const QObject * target)
*/

HB_FUNC_STATIC( QSCROLLER_SCROLLER )
{
  QScroller_scroller1();
}
$addMethod=scroller

$prototype=void ungrabGesture(QObject * target)
$method=|void|ungrabGesture|QObject *

$beginSignals
$signal=|scrollerPropertiesChanged(QScrollerProperties)
$signal=|stateChanged(QScroller::State)
$endSignals

#pragma ENDDUMP
