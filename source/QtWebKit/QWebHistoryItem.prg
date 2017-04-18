/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QDATETIME
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QWebHistoryItem

   DATA pointer
   DATA class_id INIT Class_Id_QWebHistoryItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon
   METHOD isValid
   METHOD lastVisited
   METHOD originalUrl
   METHOD setUserData
   METHOD title
   METHOD url
   METHOD userData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebHistoryItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebHistoryItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebHistoryItem>
#endif

#include <QVariant>

/*
QWebHistoryItem ( const QWebHistoryItem & other )
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_NEW )
{
  QWebHistoryItem * par1 = (QWebHistoryItem *) _qt5xhb_itemGetPtr(1);
  QWebHistoryItem * o = new QWebHistoryItem ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


HB_FUNC_STATIC( QWEBHISTORYITEM_DELETE )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QIcon icon () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_ICON )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_ISVALID )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QDateTime lastVisited () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_LASTVISITED )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastVisited (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QUrl originalUrl () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_ORIGINALURL )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->originalUrl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setUserData ( const QVariant & userData )
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_SETUSERDATA )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
    obj->setUserData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_TITLE )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_URL )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QVariant userData () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_USERDATA )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->userData (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



HB_FUNC_STATIC( QWEBHISTORYITEM_NEWFROM )
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

HB_FUNC_STATIC( QWEBHISTORYITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBHISTORYITEM_NEWFROM );
}

HB_FUNC_STATIC( QWEBHISTORYITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBHISTORYITEM_NEWFROM );
}

HB_FUNC_STATIC( QWEBHISTORYITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBHISTORYITEM_SETSELFDESTRUCTION )
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