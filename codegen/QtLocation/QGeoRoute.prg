%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoRectangle>
#include <QGeoRouteSegment>

$prototype=QGeoRoute()
$internalConstructor=5,4,0|new1|

$prototype=QGeoRoute(const QGeoRoute &other)
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

$prototype=void setRouteId(const QString &id)
$method=5,4,0|void|setRouteId|const QString &

$prototype=QString routeId() const
$method=5,4,0|QString|routeId|

$prototype=void setRequest(const QGeoRouteRequest &request)
$method=5,4,0|void|setRequest|const QGeoRouteRequest &

$prototype=QGeoRouteRequest request() const
$method=5,4,0|QGeoRouteRequest|request|

$prototype=void setBounds(const QGeoRectangle &bounds)
$method=5,4,0|void|setBounds|const QGeoRectangle &

$prototype=QGeoRectangle bounds() const
$method=5,4,0|QGeoRectangle|bounds|

$prototype=void setFirstRouteSegment(const QGeoRouteSegment &routeSegment)
$method=5,4,0|void|setFirstRouteSegment|const QGeoRouteSegment &

$prototype=QGeoRouteSegment firstRouteSegment() const
$method=5,4,0|QGeoRouteSegment|firstRouteSegment|

$prototype=void setTravelTime(int secs)
$method=5,4,0|void|setTravelTime|int

$prototype=int travelTime() const
$method=5,4,0|int|travelTime|

$prototype=void setDistance(qreal distance)
$method=5,4,0|void|setDistance|qreal

$prototype=qreal distance() const
$method=5,4,0|qreal|distance|

$prototype=void setTravelMode(QGeoRouteRequest::TravelMode mode)
$method=5,4,0|void|setTravelMode|QGeoRouteRequest::TravelMode

$prototype=QGeoRouteRequest::TravelMode travelMode() const
$method=5,4,0|QGeoRouteRequest::TravelMode|travelMode|

$prototype=void setPath(const QList<QGeoCoordinate> &path)
$method=5,4,0|void|setPath|const QList<QGeoCoordinate> &

$prototype=QList<QGeoCoordinate> path() const
$method=5,4,0|QList<QGeoCoordinate>|path|

$extraMethods

#pragma ENDDUMP
