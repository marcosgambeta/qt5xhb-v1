/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QGEOLOCATION
#endif

CLASS QGeoCodeReply INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD error
   METHOD errorString
   METHOD viewport
   METHOD locations
   METHOD limit
   METHOD offset
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoCodeReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodeReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodeReply>
#endif
#endif

#include <QGeoShape>

/*
QGeoCodeReply(Error error, const QString &errorString, QObject *parent = 0)
*/
HB_FUNC_STATIC( QGEOCODEREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * o = new QGeoCodeReply ( (QGeoCodeReply::Error) hb_parni(1), PQSTRING(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QGEOCODEREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QGEOCODEREPLY_ISFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
#endif
}


/*
Error error() const
*/
HB_FUNC_STATIC( QGEOCODEREPLY_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QGEOCODEREPLY_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
#endif
}


/*
QGeoShape viewport() const
*/
HB_FUNC_STATIC( QGEOCODEREPLY_VIEWPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * ptr = new QGeoShape( obj->viewport () );
    _qt5xhb_createReturnClass ( ptr, "QGEOSHAPE", true );
  }
#endif
}


/*
QList<QGeoLocation> locations() const
*/
HB_FUNC_STATIC( QGEOCODEREPLY_LOCATIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoLocation> list = obj->locations ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOLOCATION" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOLOCATION" );
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
        hb_itemPutPtr( pItem, (QGeoLocation *) new QGeoLocation ( list[i] ) );
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
int limit() const
*/
HB_FUNC_STATIC( QGEOCODEREPLY_LIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->limit () );
  }
#endif
}


/*
int offset() const
*/
HB_FUNC_STATIC( QGEOCODEREPLY_OFFSET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->offset () );
  }
#endif
}


/*
virtual void abort()
*/
HB_FUNC_STATIC( QGEOCODEREPLY_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
