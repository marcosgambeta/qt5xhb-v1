$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QURL
#endif

CLASS QNetworkCacheMetaData

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD expirationDate
   METHOD isValid
   METHOD lastModified
   METHOD saveToDisk
   METHOD setExpirationDate
   METHOD setLastModified
   METHOD setSaveToDisk
   METHOD setUrl
   METHOD url

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

#include <QDateTime>

/*
QNetworkCacheMetaData ()
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW1 )
{
  QNetworkCacheMetaData * o = new QNetworkCacheMetaData ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW2 )
{
  QNetworkCacheMetaData * o = new QNetworkCacheMetaData ( *PQNETWORKCACHEMETADATA(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QNetworkCacheMetaData ()
//[2]QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKCACHEMETADATA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
  {
    HB_FUNC_EXEC( QNETWORKCACHEMETADATA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDateTime expirationDate () const
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_EXPIRATIONDATE )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expirationDate () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_ISVALID )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QDateTime lastModified () const
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_LASTMODIFIED )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastModified () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}



/*
bool saveToDisk () const
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SAVETODISK )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->saveToDisk () );
  }
}



/*
void setExpirationDate ( const QDateTime & dateTime )
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SETEXPIRATIONDATE )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExpirationDate ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastModified ( const QDateTime & dateTime )
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SETLASTMODIFIED )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLastModified ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setSaveToDisk ( bool allow )
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SETSAVETODISK )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSaveToDisk ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SETURL )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_URL )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



$extraMethods

#pragma ENDDUMP
