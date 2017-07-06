$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBHISTORYITEM
#endif

CLASS QWebHistory

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

/*
void back ()
*/
HB_FUNC_STATIC( QWEBHISTORY_BACK )
{
  QWebHistory * obj = (QWebHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back ();
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
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->backItem () );
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
    QList<QWebHistoryItem> list = obj->backItems ( PINT(1) );
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
    RBOOL( obj->canGoBack () );
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
    RBOOL( obj->canGoForward () );
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
    obj->clear ();
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
    RINT( obj->count () );
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
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->currentItem () );
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
    RINT( obj->currentItemIndex () );
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
    obj->forward ();
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
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->forwardItem () );
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
    QList<QWebHistoryItem> list = obj->forwardItems ( PINT(1) );
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
    obj->goToItem ( *PQWEBHISTORYITEM(1) );
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
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->itemAt ( PINT(1) ) );
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
    QList<QWebHistoryItem> list = obj->items ();
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
    RINT( obj->maximumItemCount () );
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
    obj->setMaximumItemCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
