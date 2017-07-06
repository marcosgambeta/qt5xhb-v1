$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLIST<QWEBENGINEHISTORYITEM> // TODO: corrigir
REQUEST QWEBENGINEHISTORYITEM
#endif

CLASS QWebEngineHistory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD clear
   METHOD items
   METHOD backItems
   METHOD forwardItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD back
   METHOD forward
   METHOD goToItem
   METHOD backItem
   METHOD currentItem
   METHOD forwardItem
   METHOD itemAt
   METHOD currentItemIndex
   METHOD count

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
void clear()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QList<QWebEngineHistoryItem> items() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_ITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebEngineHistoryItem> * ptr = new QList<QWebEngineHistoryItem>( obj->items () );
    _qt5xhb_createReturnClass ( ptr, "QLIST<QWEBENGINEHISTORYITEM>" );
  }
#endif
}


/*
QList<QWebEngineHistoryItem> backItems(int maxItems) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACKITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebEngineHistoryItem> * ptr = new QList<QWebEngineHistoryItem>( obj->backItems ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QLIST<QWEBENGINEHISTORYITEM>" );
  }
#endif
}


/*
QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARDITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebEngineHistoryItem> * ptr = new QList<QWebEngineHistoryItem>( obj->forwardItems ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QLIST<QWEBENGINEHISTORYITEM>" );
  }
#endif
}


/*
bool canGoBack() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CANGOBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canGoBack () );
  }
#endif
}


/*
bool canGoForward() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CANGOFORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canGoForward () );
  }
#endif
}


/*
void back()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void forward()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void goToItem(const QWebEngineHistoryItem &item)
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_GOTOITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->goToItem ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWebEngineHistoryItem backItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACKITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->backItem () );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
QWebEngineHistoryItem currentItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CURRENTITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->currentItem () );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
QWebEngineHistoryItem forwardItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARDITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->forwardItem () );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
QWebEngineHistoryItem itemAt(int i) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_ITEMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->itemAt ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
int currentItemIndex() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CURRENTITEMINDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->currentItemIndex () );
  }
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
