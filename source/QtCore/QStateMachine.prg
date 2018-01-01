/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QStateMachine INHERIT QState

   METHOD new
   METHOD delete
   METHOD addState
   METHOD removeState
   METHOD error
   METHOD errorString
   METHOD clearError
   METHOD isRunning
   METHOD isAnimated
   METHOD setAnimated
   METHOD addDefaultAnimation
   METHOD defaultAnimations
   METHOD removeDefaultAnimation
   METHOD globalRestorePolicy
   METHOD setGlobalRestorePolicy
   METHOD postEvent
   METHOD postDelayedEvent
   METHOD cancelDelayedEvent
   METHOD eventFilter
   METHOD start
   METHOD stop

   METHOD onStarted
   METHOD onStopped

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStateMachine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStateMachine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStateMachine>
#endif

/*
QStateMachine(QObject *parent = 0)
*/
void QStateMachine_new1 ()
{
  QStateMachine * o = new QStateMachine ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStateMachine(QState::ChildMode childMode, QObject *parent = 0)
*/
void QStateMachine_new2 ()
{
  QStateMachine * o = new QStateMachine ( (QState::ChildMode) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QStateMachine(QObject *parent = 0)
//[2]QStateMachine(QState::ChildMode childMode, QObject *parent = 0)

HB_FUNC_STATIC( QSTATEMACHINE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStateMachine_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QStateMachine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATEMACHINE_DELETE )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addState(QAbstractState *state)
*/
HB_FUNC_STATIC( QSTATEMACHINE_ADDSTATE )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTSTATE(1) )
    {
      QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
      obj->addState ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeState(QAbstractState *state)
*/
HB_FUNC_STATIC( QSTATEMACHINE_REMOVESTATE )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTSTATE(1) )
    {
      QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
      obj->removeState ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Error error() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ERROR )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ERRORSTRING )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
void clearError()
*/
HB_FUNC_STATIC( QSTATEMACHINE_CLEARERROR )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearError ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isRunning() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ISRUNNING )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isRunning () );
  }
}

/*
bool isAnimated() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ISANIMATED )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isAnimated () );
  }
}

/*
void setAnimated(bool enabled)
*/
HB_FUNC_STATIC( QSTATEMACHINE_SETANIMATED )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAnimated ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addDefaultAnimation(QAbstractAnimation *animation)
*/
HB_FUNC_STATIC( QSTATEMACHINE_ADDDEFAULTANIMATION )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      obj->addDefaultAnimation ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QAbstractAnimation *> defaultAnimations() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_DEFAULTANIMATIONS )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->defaultAnimations ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractAnimation *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
void removeDefaultAnimation(QAbstractAnimation *animation)
*/
HB_FUNC_STATIC( QSTATEMACHINE_REMOVEDEFAULTANIMATION )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      obj->removeDefaultAnimation ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QState::RestorePolicy globalRestorePolicy() const
*/
HB_FUNC_STATIC( QSTATEMACHINE_GLOBALRESTOREPOLICY )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->globalRestorePolicy () );
  }
}

/*
void setGlobalRestorePolicy(QState::RestorePolicy restorePolicy)
*/
HB_FUNC_STATIC( QSTATEMACHINE_SETGLOBALRESTOREPOLICY )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setGlobalRestorePolicy ( (QState::RestorePolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void postEvent(QEvent *event, EventPriority priority = NormalPriority)
*/
HB_FUNC_STATIC( QSTATEMACHINE_POSTEVENT )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEVENT(1) && ISOPTNUM(2) )
    {
      QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) QStateMachine::NormalPriority : hb_parni(2);
      obj->postEvent ( par1, (QStateMachine::EventPriority) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int postDelayedEvent(QEvent *event, int delay)
*/
HB_FUNC_STATIC( QSTATEMACHINE_POSTDELAYEDEVENT )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEVENT(1) && ISNUM(2) )
    {
      QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
      RINT( obj->postDelayedEvent ( par1, PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool cancelDelayedEvent(int id)
*/
HB_FUNC_STATIC( QSTATEMACHINE_CANCELDELAYEDEVENT )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->cancelDelayedEvent ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool eventFilter(QObject *watched, QEvent *event)
*/
HB_FUNC_STATIC( QSTATEMACHINE_EVENTFILTER )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISQEVENT(2) )
    {
      RBOOL( obj->eventFilter ( PQOBJECT(1), PQEVENT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void start()
*/
HB_FUNC_STATIC( QSTATEMACHINE_START )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop()
*/
HB_FUNC_STATIC( QSTATEMACHINE_STOP )
{
  QStateMachine * obj = (QStateMachine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->stop ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
