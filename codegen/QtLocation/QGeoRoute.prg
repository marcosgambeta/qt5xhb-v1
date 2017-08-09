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
$method=5,4,0|void|setPath|const QList<QGeoCoordinate> &

/*
QList<QGeoCoordinate> path() const
*/
$method=5,4,0|QList<QGeoCoordinate>|path|

$extraMethods

#pragma ENDDUMP
