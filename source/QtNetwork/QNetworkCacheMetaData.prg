/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QURL
#endif

CLASS QNetworkCacheMetaData

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkCacheMetaData
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QNetworkCacheMetaData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNetworkCacheMetaData>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNetworkCacheMetaData>
#endif
#endif

#include <QDateTime>

/*
QNetworkCacheMetaData ()
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkCacheMetaData * o = new QNetworkCacheMetaData (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkCacheMetaData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtr(1);
  QNetworkCacheMetaData * o = new QNetworkCacheMetaData ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkCacheMetaData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
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

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDateTime expirationDate () const
*/
HB_FUNC_STATIC( QNETWORKCACHEMETADATA_EXPIRATIONDATE )
{
  QNetworkCacheMetaData * obj = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expirationDate (  ) );
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
    hb_retl( obj->isValid (  ) );
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
    QDateTime * ptr = new QDateTime( obj->lastModified (  ) );
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
    hb_retl( obj->saveToDisk (  ) );
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
    QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
    obj->setExpirationDate ( *par1 );
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
    QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
    obj->setLastModified ( *par1 );
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
    obj->setSaveToDisk ( (bool) hb_parl(1) );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
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
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKCACHEMETADATA_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKCACHEMETADATA_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_SETSELFDESTRUCTION )
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