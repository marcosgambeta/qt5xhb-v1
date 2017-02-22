/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QLIST<QWEBENGINEHISTORYITEM>
REQUEST QWEBENGINEHISTORYITEM

CLASS QWebEngineHistory

   DATA pointer
   DATA class_id INIT Class_Id_QWebEngineHistory
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QWebEngineHistory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineHistory>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineHistory>
#endif
#endif



/*
void clear()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
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
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebEngineHistoryItem> * ptr = new QList<QWebEngineHistoryItem>( obj->items (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLIST<QWEBENGINEHISTORYITEM>" );
  }
#endif
}


/*
QList<QWebEngineHistoryItem> backItems(int maxItems) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACKITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebEngineHistoryItem> * ptr = new QList<QWebEngineHistoryItem>( obj->backItems ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QLIST<QWEBENGINEHISTORYITEM>" );
  }
#endif
}


/*
QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARDITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebEngineHistoryItem> * ptr = new QList<QWebEngineHistoryItem>( obj->forwardItems ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QLIST<QWEBENGINEHISTORYITEM>" );
  }
#endif
}


/*
bool canGoBack() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CANGOBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canGoBack (  ) );
  }
#endif
}


/*
bool canGoForward() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CANGOFORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canGoForward (  ) );
  }
#endif
}


/*
void back()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back (  );
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
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward (  );
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
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->goToItem (  );
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
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->backItem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
QWebEngineHistoryItem currentItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CURRENTITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->currentItem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
QWebEngineHistoryItem forwardItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARDITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->forwardItem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
QWebEngineHistoryItem itemAt(int i) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_ITEMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->itemAt ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM" );
  }
#endif
}


/*
int currentItemIndex() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CURRENTITEMINDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentItemIndex (  ) );
  }
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
#endif
}



HB_FUNC_STATIC( QWEBENGINEHISTORY_NEWFROM )
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

HB_FUNC_STATIC( QWEBENGINEHISTORY_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QWEBENGINEHISTORY_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QWEBENGINEHISTORY_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_SETSELFDESTRUCTION )
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