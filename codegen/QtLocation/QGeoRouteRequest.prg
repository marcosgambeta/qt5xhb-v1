$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
REQUEST QGEORECTANGLE
#endif

CLASS QGeoRouteRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setWaypoints
   METHOD waypoints
   METHOD setExcludeAreas
   METHOD excludeAreas
   METHOD setNumberAlternativeRoutes
   METHOD numberAlternativeRoutes
   METHOD setTravelModes
   METHOD travelModes
   METHOD setFeatureWeight
   METHOD featureWeight
   METHOD featureTypes
   METHOD setRouteOptimization
   METHOD routeOptimization
   METHOD setSegmentDetail
   METHOD segmentDetail
   METHOD setManeuverDetail
   METHOD maneuverDetail

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

/*
explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
*/
void QGeoRouteRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QList<QGeoCoordinate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QGeoRouteRequest * o = new QGeoRouteRequest ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
*/
$internalConstructor=5,4,0|new2|const QGeoCoordinate &,const QGeoCoordinate &

/*
QGeoRouteRequest(const QGeoRouteRequest &other)
*/
$internalConstructor=5,4,0|new3|const QGeoRouteRequest &

//[1]explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
//[2]QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
//[3]QGeoRouteRequest(const QGeoRouteRequest &other)

HB_FUNC_STATIC( QGEOROUTEREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISARRAY(1)||ISNIL(1)) )
  {
    QGeoRouteRequest_new1();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    QGeoRouteRequest_new2();
  }
  else if( ISNUMPAR(1) && ISQGEOROUTEREQUEST(1) )
  {
    QGeoRouteRequest_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
void setWaypoints(const QList<QGeoCoordinate> &waypoints)
*/
$method=5,4,0|void|setWaypoints|const QList<QGeoCoordinate> &

/*
QList<QGeoCoordinate> waypoints() const
*/
$method=5,4,0|QList<QGeoCoordinate>|waypoints|

/*
void setExcludeAreas(const QList<QGeoRectangle> &areas)
*/
$method=5,4,0|void|setExcludeAreas|const QList<QGeoRectangle> &

/*
QList<QGeoRectangle> excludeAreas() const
*/
$method=5,4,0|QList<QGeoRectangle>|excludeAreas|

/*
void setNumberAlternativeRoutes(int alternatives)
*/
$method=5,4,0|void|setNumberAlternativeRoutes|int

/*
int numberAlternativeRoutes() const
*/
$method=5,4,0|int|numberAlternativeRoutes|

/*
void setTravelModes(TravelModes travelModes)
*/
$method=5,4,0|void|setTravelModes|QGeoRouteRequest::TravelModes

/*
TravelModes travelModes() const
*/
$method=5,4,0|QGeoRouteRequest::TravelModes|travelModes|

/*
void setFeatureWeight(FeatureType featureType, FeatureWeight featureWeight)
*/
$method=5,4,0|void|setFeatureWeight|QGeoRouteRequest::FeatureType,QGeoRouteRequest::FeatureWeight

/*
FeatureWeight featureWeight(FeatureType featureType) const
*/
$method=5,4,0|QGeoRouteRequest::FeatureWeight|featureWeight|QGeoRouteRequest::FeatureType

/*
QList<FeatureType> featureTypes() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_FEATURETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoRouteRequest::FeatureType> list = obj->featureTypes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
void setRouteOptimization(RouteOptimizations optimization)
*/
$method=5,4,0|void|setRouteOptimization|QGeoRouteRequest::RouteOptimizations

/*
RouteOptimizations routeOptimization() const
*/
$method=5,4,0|QGeoRouteRequest::RouteOptimizations|routeOptimization|

/*
void setSegmentDetail(SegmentDetail segmentDetail)
*/
$method=5,4,0|void|setSegmentDetail|QGeoRouteRequest::SegmentDetail

/*
SegmentDetail segmentDetail() const
*/
$method=5,4,0|QGeoRouteRequest::SegmentDetail|segmentDetail|

/*
void setManeuverDetail(ManeuverDetail maneuverDetail)
*/
$method=5,4,0|void|setManeuverDetail|QGeoRouteRequest::ManeuverDetail

/*
ManeuverDetail maneuverDetail() const
*/
$method=5,4,0|QGeoRouteRequest::ManeuverDetail|maneuverDetail|

$extraMethods

#pragma ENDDUMP
