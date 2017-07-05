$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
REQUEST QSTATEMACHINE
REQUEST QSTATE
REQUEST QABSTRACTSTATE
#endif

CLASS QAbstractTransition INHERIT QObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void addAnimation ( QAbstractAnimation * animation )
*/
$method=|void|addAnimation|QAbstractAnimation *

/*
QList<QAbstractAnimation *> animations () const
*/
HB_FUNC_STATIC( QABSTRACTTRANSITION_ANIMATIONS )
{
  QAbstractTransition * obj = (QAbstractTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->animations ();
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
$method=|void|removeAnimation|QAbstractAnimation *

/*
void setTargetState ( QAbstractState * target )
*/
$method=|void|setTargetState|QAbstractState *

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
