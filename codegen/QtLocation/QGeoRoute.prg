$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREQUEST
REQUEST QGEORECTANGLE
REQUEST QGEOROUTESEGMENT
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoRoute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setRouteId
   METHOD routeId
   METHOD setRequest
   METHOD request
   METHOD setBounds
   METHOD bounds
   METHOD setFirstRouteSegment
   METHOD firstRouteSegment
   METHOD setTravelTime
   METHOD travelTime
   METHOD setDistance
   METHOD distance
   METHOD setTravelMode
   METHOD travelMode
   METHOD setPath
   METHOD path

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

#include <QGeoRectangle>
#include <QGeoRouteSegment>

/*
QGeoRoute()
*/
$internalConstructor=5,4,0|new1|

/*
QGeoRoute(const QGeoRoute &other)
*/
$internalConstructor=5,4,0|new2|const QGeoRoute &

//[1]QGeoRoute()
//[2]QGeoRoute(const QGeoRoute &other)

HB_FUNC_STATIC( QGEOROUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRoute_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    QGeoRoute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
void setRouteId(const QString &id)
*/
$method=5,4,0|void|setRouteId|const QString &

/*
QString routeId() const
*/
$method=5,4,0|QString|routeId|

/*
void setRequest(const QGeoRouteRequest &request)
*/
$method=5,4,0|void|setRequest|const QGeoRouteRequest &

/*
QGeoRouteRequest request() const
*/
$method=5,4,0|QGeoRouteRequest|request|

/*
void setBounds(const QGeoRectangle &bounds)
*/
$method=5,4,0|void|setBounds|const QGeoRectangle &

/*
QGeoRectangle bounds() const
*/
$method=5,4,0|QGeoRectangle|bounds|

/*
void setFirstRouteSegment(const QGeoRouteSegment &routeSegment)
*/
$method=5,4,0|void|setFirstRouteSegment|const QGeoRouteSegment &

/*
QGeoRouteSegment firstRouteSegment() const
*/
$method=5,4,0|QGeoRouteSegment|firstRouteSegment|

/*
void setTravelTime(int secs)
*/
$method=5,4,0|void|setTravelTime|int

/*
int travelTime() const
*/
$method=5,4,0|int|travelTime|

/*
void setDistance(qreal distance)
*/
$method=5,4,0|void|setDistance|qreal

/*
qreal distance() const
*/
$method=5,4,0|qreal|distance|

/*
void setTravelMode(QGeoRouteRequest::TravelMode mode)
*/
$method=5,4,0|void|setTravelMode|QGeoRouteRequest::TravelMode

/*
QGeoRouteRequest::TravelMode travelMode() const
*/
$method=5,4,0|QGeoRouteRequest::TravelMode|travelMode|

/*
void setPath(const QList<QGeoCoordinate> &path)
*/
HB_FUNC_STATIC( QGEOROUTE_SETPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoCoordinate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QGeoCoordinate> path() const
*/
HB_FUNC_STATIC( QGEOROUTE_PATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoCoordinate> list = obj->path ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOCOORDINATE" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOCOORDINATE" );
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
        hb_itemPutPtr( pItem, (QGeoCoordinate *) new QGeoCoordinate ( list[i] ) );
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

$extraMethods

#pragma ENDDUMP
