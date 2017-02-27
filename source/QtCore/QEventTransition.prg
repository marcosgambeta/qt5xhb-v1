/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QEventTransition INHERIT QAbstractTransition

   DATA class_id INIT Class_Id_QEventTransition
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QEventTransition>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QEventTransition>
#endif
#endif

/*
QEventTransition(QState * sourceState = 0)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QState * par1 = ISNIL(1)? 0 : (QState *) _qtxhb_itemGetPtr(1);
  QEventTransition * o = new QEventTransition ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEventTransition *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QState * par3 = ISNIL(3)? 0 : (QState *) _qtxhb_itemGetPtr(3);
  QEventTransition * o = new QEventTransition ( par1,  (QEvent::Type) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEventTransition *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QEventTransition(QState * sourceState = 0)
//[2]QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)

HB_FUNC_STATIC( QEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISNUM(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENTTRANSITION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QObject * eventSource() const
*/
HB_FUNC_STATIC( QEVENTTRANSITION_EVENTSOURCE )
{
  QEventTransition * obj = (QEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->eventSource (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QEvent::Type eventType() const
*/
HB_FUNC_STATIC( QEVENTTRANSITION_EVENTTYPE )
{
  QEventTransition * obj = (QEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->eventType (  ) );
  }
}


/*
void setEventSource(QObject * object)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_SETEVENTSOURCE )
{
  QEventTransition * obj = (QEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->setEventSource ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEventType(QEvent::Type type)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_SETEVENTTYPE )
{
  QEventTransition * obj = (QEventTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEventType (  (QEvent::Type) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
