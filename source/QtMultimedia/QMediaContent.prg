/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKREQUEST
REQUEST QMEDIARESOURCE
REQUEST QURL
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaContent

   DATA pointer
   DATA class_id INIT Class_Id_QMediaContent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD canonicalRequest
   METHOD canonicalResource
   METHOD canonicalUrl
   METHOD isNull
   METHOD playlist
   METHOD resources
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaContent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaContent>
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
#include <QMediaContent>
#endif

/*
QMediaContent()
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW1 )
{
  QMediaContent * o = new QMediaContent (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMediaContent(const QUrl & url)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW2 )
{
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  QMediaContent * o = new QMediaContent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMediaContent(const QNetworkRequest & request)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW3 )
{
  QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
  QMediaContent * o = new QMediaContent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMediaContent(const QMediaResource & resource)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW4 )
{
  QMediaResource * par1 = (QMediaResource *) _qt5xhb_itemGetPtr(1);
  QMediaContent * o = new QMediaContent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMediaContent(const QMediaResourceList & resources)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW5 )
{
QMediaResourceList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QMediaResource *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QMediaContent * o = new QMediaContent ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMediaContent(const QMediaContent & other)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW6 )
{
  QMediaContent * par1 = (QMediaContent *) _qt5xhb_itemGetPtr(1);
  QMediaContent * o = new QMediaContent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW7 )
{
  QMediaPlaylist * par1 = (QMediaPlaylist *) _qt5xhb_itemGetPtr(1);
  QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
  bool par3 = ISNIL(3)? false : hb_parl(3);
  QMediaContent * o = new QMediaContent ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaContent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QMediaContent()
//[2]QMediaContent(const QUrl & url)
//[3]QMediaContent(const QNetworkRequest & request)
//[4]QMediaContent(const QMediaResource & resource)
//[5]QMediaContent(const QMediaResourceList & resources)
//[6]QMediaContent(const QMediaContent & other)
//[7]QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)

HB_FUNC_STATIC( QMEDIACONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW6 );
  }
  else if( ISBETWEEN(1,3) && ISQMEDIAPLAYLIST(1) && (ISQURL(2)||ISNIL(2)) && (ISLOG(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMEDIACONTENT_DELETE )
{
  QMediaContent * obj = (QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QNetworkRequest canonicalRequest() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALREQUEST )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * ptr = new QNetworkRequest( obj->canonicalRequest (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREQUEST", true );
  }
}


/*
QMediaResource canonicalResource() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALRESOURCE )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaResource * ptr = new QMediaResource( obj->canonicalResource (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIARESOURCE" );
  }
}


/*
QUrl canonicalUrl() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALURL )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->canonicalUrl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_ISNULL )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_PLAYLIST )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaPlaylist * ptr = obj->playlist (  );
    _qt5xhb_createReturnClass ( ptr, "QMEDIAPLAYLIST" );
  }
}


/*
QMediaResourceList resources() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_RESOURCES )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaResourceList list = obj->resources (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMEDIARESOURCE" );
    #else
    pDynSym = hb_dynsymFindName( "QMEDIARESOURCE" );
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
        hb_itemPutPtr( pItem, (QMediaResource *) new QMediaResource( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



HB_FUNC_STATIC( QMEDIACONTENT_NEWFROM )
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

HB_FUNC_STATIC( QMEDIACONTENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIACONTENT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIACONTENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIACONTENT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIACONTENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIACONTENT_SETSELFDESTRUCTION )
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