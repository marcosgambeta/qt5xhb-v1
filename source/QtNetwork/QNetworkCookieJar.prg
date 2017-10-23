/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookieJar INHERIT QObject

   METHOD new
   METHOD delete
   METHOD cookiesForUrl
   METHOD setCookiesFromUrl

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkCookieJar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkCookieJar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkCookieJar>
#endif

#include <QNetworkCookie>

/*
QNetworkCookieJar ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKCOOKIEJAR_NEW )
{
  QNetworkCookieJar * o = new QNetworkCookieJar ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QNETWORKCOOKIEJAR_DELETE )
{
  QNetworkCookieJar * obj = (QNetworkCookieJar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QList<QNetworkCookie> cookiesForUrl ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QNETWORKCOOKIEJAR_COOKIESFORURL )
{
  QNetworkCookieJar * obj = (QNetworkCookieJar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkCookie> list = obj->cookiesForUrl ( *PQURL(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKCOOKIE" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKCOOKIE" );
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
        hb_itemPutPtr( pItem, (QNetworkCookie *) new QNetworkCookie ( list[i] ) );
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
virtual bool setCookiesFromUrl ( const QList<QNetworkCookie> & cookieList, const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKCOOKIEJAR_SETCOOKIESFROMURL )
{
  QNetworkCookieJar * obj = (QNetworkCookieJar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkCookie> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    RBOOL( obj->setCookiesFromUrl ( par1, *PQURL(2) ) );
  }
}



#pragma ENDDUMP
