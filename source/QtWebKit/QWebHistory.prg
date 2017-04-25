/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBHISTORYITEM
#endif

CLASS QWebHistory

   DATA pointer
   //DATA class_id INIT Class_Id_QWebHistory
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD back
   METHOD backItem
   METHOD backItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD clear
   METHOD count
   METHOD currentItem
   METHOD currentItemIndex
   METHOD forward
   METHOD forwardItem
   METHOD forwardItems
   METHOD goToItem
   METHOD itemAt
   METHOD items
   METHOD maximumItemCount
   METHOD setMaximumItemCount

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebHistory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebHistory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebHistory>
#endif



/*
void back ()
*/
HB_FUNC_STATIC( QWEBHISTORY_BACK )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebHistoryItem backItem () const
*/
HB_FUNC_STATIC( QWEBHISTORY_BACKITEM )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->backItem (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );
  }
}


/*
QList<QWebHistoryItem> backItems ( int maxItems ) const
*/
HB_FUNC_STATIC( QWEBHISTORY_BACKITEMS )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebHistoryItem> list = obj->backItems ( (int) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBHISTORYITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
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
        hb_itemPutPtr( pItem, (QWebHistoryItem *) new QWebHistoryItem ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool canGoBack () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CANGOBACK )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canGoBack (  ) );
  }
}


/*
bool canGoForward () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CANGOFORWARD )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canGoForward (  ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QWEBHISTORY_CLEAR )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QWEBHISTORY_COUNT )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
QWebHistoryItem currentItem () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CURRENTITEM )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->currentItem (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );
  }
}


/*
int currentItemIndex () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CURRENTITEMINDEX )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentItemIndex (  ) );
  }
}


/*
void forward ()
*/
HB_FUNC_STATIC( QWEBHISTORY_FORWARD )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebHistoryItem forwardItem () const
*/
HB_FUNC_STATIC( QWEBHISTORY_FORWARDITEM )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->forwardItem (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );
  }
}


/*
QList<QWebHistoryItem> forwardItems ( int maxItems ) const
*/
HB_FUNC_STATIC( QWEBHISTORY_FORWARDITEMS )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebHistoryItem> list = obj->forwardItems ( (int) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBHISTORYITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
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
        hb_itemPutPtr( pItem, (QWebHistoryItem *) new QWebHistoryItem ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void goToItem ( const QWebHistoryItem & item )
*/
HB_FUNC_STATIC( QWEBHISTORY_GOTOITEM )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistoryItem * par1 = (QWebHistoryItem *) _qt5xhb_itemGetPtr(1);
    obj->goToItem ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebHistoryItem itemAt ( int i ) const
*/
HB_FUNC_STATIC( QWEBHISTORY_ITEMAT )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->itemAt ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );
  }
}


/*
QList<QWebHistoryItem> items () const
*/
HB_FUNC_STATIC( QWEBHISTORY_ITEMS )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebHistoryItem> list = obj->items (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBHISTORYITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
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
        hb_itemPutPtr( pItem, (QWebHistoryItem *) new QWebHistoryItem ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int maximumItemCount () const
*/
HB_FUNC_STATIC( QWEBHISTORY_MAXIMUMITEMCOUNT )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maximumItemCount (  ) );
  }
}


/*
void setMaximumItemCount ( int count )
*/
HB_FUNC_STATIC( QWEBHISTORY_SETMAXIMUMITEMCOUNT )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumItemCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QWEBHISTORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWEBHISTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBHISTORY_NEWFROM );
}

HB_FUNC_STATIC( QWEBHISTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBHISTORY_NEWFROM );
}

HB_FUNC_STATIC( QWEBHISTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBHISTORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
