/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTANIMATION
REQUEST QSTATEMACHINE
REQUEST QSTATE
REQUEST QABSTRACTSTATE

CLASS QAbstractTransition INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractTransition
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractTransition>
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
#include <QAbstractTransition>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTTRANSITION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void addAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_ADDANIMATION )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qtxhb_itemGetPtr(1);
    obj->addAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QAbstractAnimation *> animations () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_ANIMATIONS )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->animations (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTANIMATION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStateMachine * ptr = obj->machine (  );
    _qt4xhb_createReturnClass ( ptr, "QSTATEMACHINE" );
  }
}


/*
void removeAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_REMOVEANIMATION )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) _qtxhb_itemGetPtr(1);
    obj->removeAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTargetState ( QAbstractState * target )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_SETTARGETSTATE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    obj->setTargetState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTargetStates ( const QList<QAbstractState *> & targets )
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_SETTARGETSTATES )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
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
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QState * sourceState () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_SOURCESTATE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QState * ptr = obj->sourceState (  );
    _qt4xhb_createReturnClass ( ptr, "QSTATE" );
  }
}


/*
QAbstractState * targetState () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_TARGETSTATE )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * ptr = obj->targetState (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}


/*
QList<QAbstractState *> targetStates () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_TARGETSTATES )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAbstractState *> list = obj->targetStates (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTSTATE" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTSTATE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
