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
$method=|void|back|

/*
QWebHistoryItem backItem () const
*/
$method=|QWebHistoryItem|backItem|

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
$method=|bool|canGoBack|

/*
bool canGoForward () const
*/
$method=|bool|canGoForward|

/*
void clear ()
*/
$method=|void|clear|

/*
int count () const
*/
$method=|int|count|

/*
QWebHistoryItem currentItem () const
*/
$method=|QWebHistoryItem|currentItem|

/*
int currentItemIndex () const
*/
$method=|int|currentItemIndex|

/*
void forward ()
*/
$method=|void|forward|

/*
QWebHistoryItem forwardItem () const
*/
$method=|QWebHistoryItem|forwardItem|

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
$method=|void|goToItem|const QWebHistoryItem &

/*
QWebHistoryItem itemAt ( int i ) const
*/
$method=|QWebHistoryItem|itemAt|int

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
$method=|int|maximumItemCount|

/*
void setMaximumItemCount ( int count )
*/
$method=|void|setMaximumItemCount|int

$extraMethods

#pragma ENDDUMP
