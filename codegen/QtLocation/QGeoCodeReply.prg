$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QGEOLOCATION
#endif

CLASS QGeoCodeReply INHERIT QObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoShape>

/*
QGeoCodeReply(Error error, const QString &errorString, QObject *parent = 0)
*/
$constructor=5,4,0|new|QGeoCodeReply::Error,const QString &,QObject *=0

$deleteMethod=5,4,0

/*
bool isFinished() const
*/
$method=5,4,0|bool|isFinished|

/*
Error error() const
*/
$method=5,4,0|QGeoCodeReply::Error|error|

/*
QString errorString() const
*/
$method=5,4,0|QString|errorString|

/*
QGeoShape viewport() const
*/
$method=5,4,0|QGeoShape|viewport|

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
$method=5,4,0|int|limit|

/*
int offset() const
*/
$method=5,4,0|int|offset|

/*
virtual void abort()
*/
$method=5,4,0|void|abort|

#pragma ENDDUMP
