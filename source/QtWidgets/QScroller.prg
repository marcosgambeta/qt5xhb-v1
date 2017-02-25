/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSCROLLERPROPERTIES
REQUEST QOBJECT
#endif

CLASS QScroller INHERIT QObject

   DATA class_id INIT Class_Id_QScroller
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
   METHOD ensureVisible1
   METHOD ensureVisible2
   METHOD ensureVisible
   METHOD resendPrepareEvent
   METHOD scrollTo1
   METHOD scrollTo2
   METHOD scrollTo
   METHOD setScrollerProperties
   METHOD activeScrollers
   METHOD grabGesture
   METHOD grabbedGesture
   METHOD hasScroller
   METHOD scroller1
   METHOD scroller2
   METHOD scroller
   METHOD ungrabGesture
   METHOD onScrollerPropertiesChanged
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScroller
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScroller>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScroller>
#endif
#endif


/*
QPointF finalPosition() const
*/
HB_FUNC_STATIC( QSCROLLER_FINALPOSITION )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->finalPosition (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
bool handleInput(Input input, const QPointF & position, qint64 timestamp = 0)
*/
HB_FUNC_STATIC( QSCROLLER_HANDLEINPUT )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->handleInput (  (QScroller::Input) par1, *par2, (qint64) ISNIL(3)? 0 : hb_parni(3) ) );
  }
}


/*
QPointF pixelPerMeter() const
*/
HB_FUNC_STATIC( QSCROLLER_PIXELPERMETER )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pixelPerMeter (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QScrollerProperties scrollerProperties() const
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLERPROPERTIES )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScrollerProperties * ptr = new QScrollerProperties( obj->scrollerProperties (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSCROLLERPROPERTIES" );
  }
}


/*
void setSnapPositionsX(const QList<qreal> & positions)
*/
HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSX1 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QList<qreal> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetND(aValues1, i1+1);
par1 << temp1;
}
    obj->setSnapPositionsX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSnapPositionsX(qreal first, qreal interval)
*/
HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSX2 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setSnapPositionsX ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSY1 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QList<qreal> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetND(aValues1, i1+1);
par1 << temp1;
}
    obj->setSnapPositionsY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSnapPositionsY(qreal first, qreal interval)
*/
HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSY2 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setSnapPositionsY ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QSCROLLER_STATE )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
void stop()
*/
HB_FUNC_STATIC( QSCROLLER_STOP )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject * target() const
*/
HB_FUNC_STATIC( QSCROLLER_TARGET )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->target (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QPointF velocity() const
*/
HB_FUNC_STATIC( QSCROLLER_VELOCITY )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->velocity (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
*/
HB_FUNC_STATIC( QSCROLLER_ENSUREVISIBLE1 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->ensureVisible ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)
*/
HB_FUNC_STATIC( QSCROLLER_ENSUREVISIBLE2 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->ensureVisible ( *par1, par2, par3, (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
//[2]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)

HB_FUNC_STATIC( QSCROLLER_ENSUREVISIBLE )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSCROLLER_ENSUREVISIBLE1 );
  }
  else if( ISNUMPAR(4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QSCROLLER_ENSUREVISIBLE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resendPrepareEvent()
*/
HB_FUNC_STATIC( QSCROLLER_RESENDPREPAREEVENT )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resendPrepareEvent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollTo(const QPointF & pos)
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLTO1 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->scrollTo ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollTo(const QPointF & pos, int scrollTime)
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLTO2 )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->scrollTo ( *par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QSCROLLER_SETSCROLLERPROPERTIES )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScrollerProperties * par1 = (QScrollerProperties *) _qtxhb_itemGetPtr(1);
    obj->setScrollerProperties ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<QScroller *> activeScrollers()
*/
HB_FUNC_STATIC( QSCROLLER_ACTIVESCROLLERS )
{
}


/*
static Qt::GestureType grabGesture(QObject * target, ScrollerGestureType scrollGestureType = TouchGesture)
*/
HB_FUNC_STATIC( QSCROLLER_GRABGESTURE )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QScroller::TouchGesture : hb_parni(2);
  hb_retni( QScroller::grabGesture ( par1,  (QScroller::ScrollerGestureType) par2 ) );
}


/*
static Qt::GestureType grabbedGesture(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_GRABBEDGESTURE )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  hb_retni( QScroller::grabbedGesture ( par1 ) );
}


/*
static bool hasScroller(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_HASSCROLLER )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  hb_retl( QScroller::hasScroller ( par1 ) );
}


/*
static QScroller * scroller(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLER1 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QScroller * ptr = QScroller::scroller ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QSCROLLER" );
}

/*
static const QScroller * scroller(const QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLER2 )
{
  const QObject * par1 = (const QObject *) _qtxhb_itemGetPtr(1);
  const QScroller * ptr = QScroller::scroller ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QSCROLLER" );
}


HB_FUNC_STATIC( QSCROLLER_SCROLLER )
{
  HB_FUNC_EXEC( QSCROLLER_SCROLLER1 );
}

/*
void ungrabGesture(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_UNGRABGESTURE )
{
  QScroller * obj = (QScroller *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->ungrabGesture ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
