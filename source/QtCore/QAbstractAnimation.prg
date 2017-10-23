/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANIMATIONGROUP
#endif

CLASS QAbstractAnimation INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentLoop
   METHOD currentLoopTime
   METHOD currentTime
   METHOD setCurrentTime
   METHOD direction
   METHOD setDirection
   METHOD duration
   METHOD group
   METHOD loopCount
   METHOD setLoopCount
   METHOD state
   METHOD totalDuration
   METHOD pause
   METHOD resume
   METHOD setPaused
   METHOD start
   METHOD stop

   METHOD onCurrentLoopChanged
   METHOD onDirectionChanged
   METHOD onFinished
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractAnimation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractAnimation>
#endif

HB_FUNC_STATIC( QABSTRACTANIMATION_DELETE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int currentLoop () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_CURRENTLOOP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentLoop () );
  }
}

/*
int currentLoopTime () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_CURRENTLOOPTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentLoopTime () );
  }
}

/*
int currentTime () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_CURRENTTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentTime () );
  }
}

/*
void setCurrentTime ( int msecs )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETCURRENTTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

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
Direction direction () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_DIRECTION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->direction () );
  }
}

/*
void  setDirection ( Direction direction )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETDIRECTION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDirection ( (QAbstractAnimation::Direction) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int duration () const = 0
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_DURATION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

/*
QAnimationGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_GROUP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAnimationGroup * ptr = obj->group ();
    _qt5xhb_createReturnClass ( ptr, "QANIMATIONGROUP" );
  }
}

/*
int loopCount () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_LOOPCOUNT )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->loopCount () );
  }
}

/*
void setLoopCount ( int loopCount )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETLOOPCOUNT )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

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
State state () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_STATE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
}

/*
int totalDuration () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_TOTALDURATION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->totalDuration () );
  }
}

/*
void pause ()
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_PAUSE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->pause ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resume ()
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_RESUME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resume ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaused ( bool paused )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_SETPAUSED )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

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
void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_START )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QAbstractAnimation::KeepWhenStopped : hb_parni(1);
      obj->start ( (QAbstractAnimation::DeletionPolicy) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop ()
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_STOP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->stop ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
