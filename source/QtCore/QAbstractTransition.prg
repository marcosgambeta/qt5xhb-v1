/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
REQUEST QSTATEMACHINE
REQUEST QSTATE
REQUEST QABSTRACTSTATE
#endif

CLASS QAbstractTransition INHERIT QObject

   METHOD delete
   METHOD addAnimation
   METHOD animations
   METHOD machine
   METHOD removeAnimation
   METHOD setTargetState
   METHOD setTargetStates
   METHOD sourceState
   METHOD targetState
   METHOD targetStates

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractTransition>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractTransition>
#endif

HB_FUNC_STATIC( QABSTRACTTRANSITION_DELETE )
{
  QAbstractTransition * obj = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_ADDANIMATION )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      obj->addAnimation ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QAbstractAnimation *> animations () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_ANIMATIONS )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->animations ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
QStateMachine * machine () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_MACHINE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStateMachine * ptr = obj->machine ();
    _qt5xhb_createReturnClass ( ptr, "QSTATEMACHINE" );
  }
}

/*
void removeAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_REMOVEANIMATION )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTANIMATION(1) )
    {
      QAbstractAnimation * par1 = (QAbstractAnimation *) _qt5xhb_itemGetPtr(1);
      obj->removeAnimation ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTargetState ( QAbstractState * target )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_SETTARGETSTATE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTSTATE(1) )
    {
      QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
      obj->setTargetState ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTargetStates ( const QList<QAbstractState *> & targets )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_SETTARGETSTATES )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QAbstractState *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setTargetStates ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QState * sourceState () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_SOURCESTATE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QState * ptr = obj->sourceState ();
    _qt5xhb_createReturnClass ( ptr, "QSTATE" );
  }
}

/*
QAbstractState * targetState () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_TARGETSTATE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractState * ptr = obj->targetState ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}

/*
QList<QAbstractState *> targetStates () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_TARGETSTATES )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractState *> list = obj->targetStates ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTSTATE" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractState *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP
