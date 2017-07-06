$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDATETIME
#endif

CLASS QWebEngineHistoryItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD originalUrl
   METHOD url
   METHOD title
   METHOD lastVisited
   METHOD iconUrl
   METHOD isValid

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
QWebEngineHistoryItem(const QWebEngineHistoryItem &other)
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * o = new QWebEngineHistoryItem ();
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,4,0

/*
QUrl originalUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_ORIGINALURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->originalUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
#endif
}


/*
QDateTime lastVisited() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_LASTVISITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastVisited () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}


/*
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->iconUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORYITEM_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistoryItem * obj = (QWebEngineHistoryItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
