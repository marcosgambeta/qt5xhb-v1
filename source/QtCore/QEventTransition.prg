/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QEventTransition INHERIT QAbstractTransition

   METHOD new
   METHOD delete
   METHOD eventSource
   METHOD eventType
   METHOD setEventSource
   METHOD setEventType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QEventTransition>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEventTransition>
#endif

/*
QEventTransition(QState * sourceState = 0)
*/
void QEventTransition_new1 ()
{
  QState * par1 = ISNIL(1)? 0 : (QState *) _qt5xhb_itemGetPtr(1);
  QEventTransition * o = new QEventTransition ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)
*/
void QEventTransition_new2 ()
{
  QState * par3 = ISNIL(3)? 0 : (QState *) _qt5xhb_itemGetPtr(3);
  QEventTransition * o = new QEventTransition ( PQOBJECT(1), (QEvent::Type) hb_parni(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QEventTransition(QState * sourceState = 0)
//[2]QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)

HB_FUNC_STATIC( QEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QEventTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISNUM(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENTTRANSITION_DELETE )
{
  QEventTransition * obj = (QEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QObject * eventSource() const
*/
HB_FUNC_STATIC( QEVENTTRANSITION_EVENTSOURCE )
{
  QEventTransition * obj = (QEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->eventSource ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
QEvent::Type eventType() const
*/
HB_FUNC_STATIC( QEVENTTRANSITION_EVENTTYPE )
{
  QEventTransition * obj = (QEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->eventType () );
  }
}

/*
void setEventSource(QObject * object)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_SETEVENTSOURCE )
{
  QEventTransition * obj = (QEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      obj->setEventSource ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEventType(QEvent::Type type)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_SETEVENTTYPE )
{
  QEventTransition * obj = (QEventTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setEventType ( (QEvent::Type) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
