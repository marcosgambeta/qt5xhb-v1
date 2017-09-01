$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSCROLLERPROPERTIES
REQUEST QOBJECT
#endif

CLASS QScroller INHERIT QObject

   METHOD finalPosition
   METHOD handleInput
   METHOD pixelPerMeter
   METHOD scrollerProperties
   METHOD setSnapPositionsX1
   METHOD setSnapPositionsX2
   METHOD setSnapPositionsX
   METHOD setSnapPositionsY1
   METHOD setSnapPositionsY2
   METHOD setSnapPositionsY
   METHOD state
   METHOD stop
   METHOD target
   METHOD velocity
   METHOD ensureVisible
   METHOD resendPrepareEvent
   METHOD scrollTo
   METHOD setScrollerProperties
   METHOD activeScrollers
   METHOD grabGesture
   METHOD grabbedGesture
   METHOD hasScroller
   METHOD scroller
   METHOD ungrabGesture

   METHOD onScrollerPropertiesChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPointF finalPosition() const
*/
$method=|QPointF|finalPosition|

/*
bool handleInput(Input input, const QPointF & position, qint64 timestamp = 0)
*/
$method=|bool|handleInput|QScroller::Input,const QPointF &,qint64=0

/*
QPointF pixelPerMeter() const
*/
$method=|QPointF|pixelPerMeter|

/*
QScrollerProperties scrollerProperties() const
*/
$method=|QScrollerProperties|scrollerProperties|

/*
void setSnapPositionsX(const QList<qreal> & positions)
*/
$method=|void|setSnapPositionsX,setSnapPositionsX1|const QList<qreal> &

/*
void setSnapPositionsX(qreal first, qreal interval)
*/
$method=|void|setSnapPositionsX,setSnapPositionsX2|qreal,qreal

//[1]void setSnapPositionsX(const QList<qreal> & positions)
//[2]void setSnapPositionsX(qreal first, qreal interval)

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSX )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSCROLLER_SETSNAPPOSITIONSX1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSCROLLER_SETSNAPPOSITIONSX2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSnapPositionsY(const QList<qreal> & positions)
*/
$method=|void|setSnapPositionsY,setSnapPositionsY1|const QList<qreal> &

/*
void setSnapPositionsY(qreal first, qreal interval)
*/
$method=|void|setSnapPositionsY,setSnapPositionsY2|qreal,qreal

//[1]void setSnapPositionsY(const QList<qreal> & positions)
//[2]void setSnapPositionsY(qreal first, qreal interval)

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSY )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSCROLLER_SETSNAPPOSITIONSY1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSCROLLER_SETSNAPPOSITIONSY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
State state() const
*/
$method=|QScroller::State|state|

/*
void stop()
*/
$method=|void|stop|

/*
QObject * target() const
*/
$method=|QObject *|target|

/*
QPointF velocity() const
*/
$method=|QPointF|velocity|

/*
void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
*/
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &,qreal,qreal

/*
void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)
*/
$internalMethod=|void|ensureVisible,ensureVisible2|const QRectF &,qreal,qreal,int

//[1]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
//[2]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)

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

/*
void resendPrepareEvent()
*/
$method=|void|resendPrepareEvent|

/*
void scrollTo(const QPointF & pos)
*/
$internalMethod=|void|scrollTo,scrollTo1|const QPointF &

/*
void scrollTo(const QPointF & pos, int scrollTime)
*/
$internalMethod=|void|scrollTo,scrollTo2|const QPointF &,int

//[1]void scrollTo(const QPointF & pos)
//[2]void scrollTo(const QPointF & pos, int scrollTime)

HB_FUNC_STATIC( QSCROLLER_SCROLLTO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QSCROLLER_SCROLLTO1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSCROLLER_SCROLLTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setScrollerProperties(const QScrollerProperties & prop)
*/
$method=|void|setScrollerProperties|const QScrollerProperties &

/*
static QList<QScroller *> activeScrollers()
*/
%% TODO: implementar
HB_FUNC_STATIC( QSCROLLER_ACTIVESCROLLERS )
{
}

/*
static Qt::GestureType grabGesture(QObject * target, ScrollerGestureType scrollGestureType = TouchGesture)
*/
$staticMethod=|Qt::GestureType|grabGesture|QObject *,QScroller::ScrollerGestureType=QScroller::TouchGesture

/*
static Qt::GestureType grabbedGesture(QObject * target)
*/
$staticMethod=|Qt::GestureType|grabbedGesture|QObject *

/*
static bool hasScroller(QObject * target)
*/
$staticMethod=|bool|hasScroller|QObject *

/*
static QScroller * scroller(QObject * target)
*/
$staticInternalMethod=|QScroller *|scroller,scroller1|QObject *

/*
static const QScroller * scroller(const QObject * target)
*/
$staticInternalMethod=|const QScroller *|scroller,scroller2|const QObject *

HB_FUNC_STATIC( QSCROLLER_SCROLLER )
{
  QScroller_scroller1();
}

/*
void ungrabGesture(QObject * target)
*/
$method=|void|ungrabGesture|QObject *

#pragma ENDDUMP
