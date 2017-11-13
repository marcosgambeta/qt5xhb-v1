/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTimeLine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD currentFrame
   METHOD currentTime
   METHOD currentValue
   METHOD curveShape
   METHOD direction
   METHOD duration
   METHOD endFrame
   METHOD frameForTime
   METHOD loopCount
   METHOD setCurveShape
   METHOD setDirection
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndFrame
   METHOD setFrameRange
   METHOD setLoopCount
   METHOD setStartFrame
   METHOD setUpdateInterval
   METHOD startFrame
   METHOD state
   METHOD updateInterval
   METHOD valueForTime
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop
   METHOD toggleDirection

   METHOD onFinished
   METHOD onFrameChanged
   METHOD onStateChanged
   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimeLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTimeLine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTimeLine>
#endif

/*
QTimeLine ( int duration = 1000, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTIMELINE_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTQOBJECT(2) )
  {
    int par1 = ISNIL(1)? 1000 : hb_parni(1);
    QTimeLine * o = new QTimeLine ( par1, OPQOBJECT(2,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIMELINE_DELETE )
{
  QTimeLine * obj = (QTimeLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int currentFrame () const
*/
HB_FUNC_STATIC( QTIMELINE_CURRENTFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentFrame () );
  }
}

/*
int currentTime () const
*/
HB_FUNC_STATIC( QTIMELINE_CURRENTTIME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentTime () );
  }
}

/*
qreal currentValue () const
*/
HB_FUNC_STATIC( QTIMELINE_CURRENTVALUE )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->currentValue () );
  }
}

/*
CurveShape curveShape () const
*/
HB_FUNC_STATIC( QTIMELINE_CURVESHAPE )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->curveShape () );
  }
}

/*
Direction direction () const
*/
HB_FUNC_STATIC( QTIMELINE_DIRECTION )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->direction () );
  }
}

/*
int duration () const
*/
HB_FUNC_STATIC( QTIMELINE_DURATION )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

/*
int endFrame () const
*/
HB_FUNC_STATIC( QTIMELINE_ENDFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->endFrame () );
  }
}

/*
int frameForTime ( int msec ) const
*/
HB_FUNC_STATIC( QTIMELINE_FRAMEFORTIME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->frameForTime ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int loopCount () const
*/
HB_FUNC_STATIC( QTIMELINE_LOOPCOUNT )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->loopCount () );
  }
}

/*
void setCurveShape ( CurveShape shape )
*/
HB_FUNC_STATIC( QTIMELINE_SETCURVESHAPE )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurveShape ( (QTimeLine::CurveShape) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirection ( Direction direction )
*/
HB_FUNC_STATIC( QTIMELINE_SETDIRECTION )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDirection ( (QTimeLine::Direction) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDuration ( int duration )
*/
HB_FUNC_STATIC( QTIMELINE_SETDURATION )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEasingCurve ( const QEasingCurve & curve )
*/
HB_FUNC_STATIC( QTIMELINE_SETEASINGCURVE )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEASINGCURVE(1) )
    {
      obj->setEasingCurve ( *PQEASINGCURVE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEndFrame ( int frame )
*/
HB_FUNC_STATIC( QTIMELINE_SETENDFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setEndFrame ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrameRange ( int startFrame, int endFrame )
*/
HB_FUNC_STATIC( QTIMELINE_SETFRAMERANGE )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setFrameRange ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLoopCount ( int count )
*/
HB_FUNC_STATIC( QTIMELINE_SETLOOPCOUNT )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLoopCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartFrame ( int frame )
*/
HB_FUNC_STATIC( QTIMELINE_SETSTARTFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStartFrame ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUpdateInterval ( int interval )
*/
HB_FUNC_STATIC( QTIMELINE_SETUPDATEINTERVAL )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setUpdateInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int startFrame () const
*/
HB_FUNC_STATIC( QTIMELINE_STARTFRAME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->startFrame () );
  }
}

/*
State state () const
*/
HB_FUNC_STATIC( QTIMELINE_STATE )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
}

/*
int updateInterval () const
*/
HB_FUNC_STATIC( QTIMELINE_UPDATEINTERVAL )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->updateInterval () );
  }
}

/*
virtual qreal valueForTime ( int msec ) const
*/
HB_FUNC_STATIC( QTIMELINE_VALUEFORTIME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->valueForTime ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void resume ()
*/
HB_FUNC_STATIC( QTIMELINE_RESUME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resume ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentTime ( int msec )
*/
HB_FUNC_STATIC( QTIMELINE_SETCURRENTTIME )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentTime ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaused ( bool paused )
*/
HB_FUNC_STATIC( QTIMELINE_SETPAUSED )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setPaused ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ()
*/
HB_FUNC_STATIC( QTIMELINE_START )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop ()
*/
HB_FUNC_STATIC( QTIMELINE_STOP )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->stop ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toggleDirection ()
*/
HB_FUNC_STATIC( QTIMELINE_TOGGLEDIRECTION )
{
  QTimeLine * obj = (QTimeLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->toggleDirection ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
