%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoRectangle>

$prototype=explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
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
  _qt5xhb_returnNewObject( o, true );
#endif
}

$prototype=QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
$internalConstructor=5,4,0|new2|const QGeoCoordinate &,const QGeoCoordinate &

$prototype=QGeoRouteRequest(const QGeoRouteRequest &other)
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

$prototype=void setWaypoints(const QList<QGeoCoordinate> &waypoints)
$method=5,4,0|void|setWaypoints|const QList<QGeoCoordinate> &

$prototype=QList<QGeoCoordinate> waypoints() const
$method=5,4,0|QList<QGeoCoordinate>|waypoints|

$prototype=void setExcludeAreas(const QList<QGeoRectangle> &areas)
$method=5,4,0|void|setExcludeAreas|const QList<QGeoRectangle> &

$prototype=QList<QGeoRectangle> excludeAreas() const
$method=5,4,0|QList<QGeoRectangle>|excludeAreas|

$prototype=void setNumberAlternativeRoutes(int alternatives)
$method=5,4,0|void|setNumberAlternativeRoutes|int

$prototype=int numberAlternativeRoutes() const
$method=5,4,0|int|numberAlternativeRoutes|

$prototype=void setTravelModes(TravelModes travelModes)
$method=5,4,0|void|setTravelModes|QGeoRouteRequest::TravelModes

$prototype=TravelModes travelModes() const
$method=5,4,0|QGeoRouteRequest::TravelModes|travelModes|

$prototype=void setFeatureWeight(FeatureType featureType, FeatureWeight featureWeight)
$method=5,4,0|void|setFeatureWeight|QGeoRouteRequest::FeatureType,QGeoRouteRequest::FeatureWeight

$prototype=FeatureWeight featureWeight(FeatureType featureType) const
$method=5,4,0|QGeoRouteRequest::FeatureWeight|featureWeight|QGeoRouteRequest::FeatureType

$prototype=QList<FeatureType> featureTypes() const
$method=5,4,0|QList<QGeoRouteRequest::FeatureType>|featureTypes|

$prototype=void setRouteOptimization(RouteOptimizations optimization)
$method=5,4,0|void|setRouteOptimization|QGeoRouteRequest::RouteOptimizations

$prototype=RouteOptimizations routeOptimization() const
$method=5,4,0|QGeoRouteRequest::RouteOptimizations|routeOptimization|

$prototype=void setSegmentDetail(SegmentDetail segmentDetail)
$method=5,4,0|void|setSegmentDetail|QGeoRouteRequest::SegmentDetail

$prototype=SegmentDetail segmentDetail() const
$method=5,4,0|QGeoRouteRequest::SegmentDetail|segmentDetail|

$prototype=void setManeuverDetail(ManeuverDetail maneuverDetail)
$method=5,4,0|void|setManeuverDetail|QGeoRouteRequest::ManeuverDetail

$prototype=ManeuverDetail maneuverDetail() const
$method=5,4,0|QGeoRouteRequest::ManeuverDetail|maneuverDetail|

$extraMethods

#pragma ENDDUMP
