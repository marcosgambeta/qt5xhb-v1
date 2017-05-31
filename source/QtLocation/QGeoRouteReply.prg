/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREQUEST
REQUEST QGEOROUTE
#endif

CLASS QGeoRouteReply INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD error
   METHOD errorString
   METHOD request
   METHOD routes
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoRouteReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRouteReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRouteReply>
#endif
#endif

/*
QGeoRouteReply(Error error, const QString &errorString, QObject *parent = 0)
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  int par1 = hb_parni(1);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
  QGeoRouteReply * o = new QGeoRouteReply ( (QGeoRouteReply::Error) par1, PQSTRING(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QGEOROUTEREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ISFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished () );
  }
#endif
}


/*
Error error() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
#endif
}


/*
QGeoRouteRequest request() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteRequest * ptr = new QGeoRouteRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREQUEST", true );
  }
#endif
}


/*
QList<QGeoRoute> routes() const
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ROUTES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoRoute> list = obj->routes ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOROUTE" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOROUTE" );
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
        hb_itemPutPtr( pItem, (QGeoRoute *) new QGeoRoute ( list[i] ) );
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
#endif
}


/*
virtual void abort()
*/
HB_FUNC_STATIC( QGEOROUTEREPLY_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
