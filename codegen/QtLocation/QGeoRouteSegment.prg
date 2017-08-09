$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
REQUEST QGEOMANEUVER
#endif

CLASS QGeoRouteSegment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setNextRouteSegment
   METHOD nextRouteSegment
   METHOD setTravelTime
   METHOD travelTime
   METHOD setDistance
   METHOD distance
   METHOD setPath
   METHOD path
   METHOD setManeuver
   METHOD maneuver

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

#include <QGeoManeuver>
#include <QGeoCoordinate>

/*
QGeoRouteSegment()
*/
$internalConstructor=5,4,0|new1|

/*
QGeoRouteSegment(const QGeoRouteSegment &other)
*/
$internalConstructor=5,4,0|new2|const QGeoRouteSegment &

//[1]QGeoRouteSegment()
//[2]QGeoRouteSegment(const QGeoRouteSegment &other)

HB_FUNC_STATIC( QGEOROUTESEGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRouteSegment_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOROUTESEGMENT(1) )
  {
    QGeoRouteSegment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
bool isValid() const
*/
$method=5,4,0|bool|isValid|

/*
void setNextRouteSegment(const QGeoRouteSegment &routeSegment)
*/
$method=5,4,0|void|setNextRouteSegment|const QGeoRouteSegment &

/*
QGeoRouteSegment nextRouteSegment() const
*/
$method=5,4,0|QGeoRouteSegment|nextRouteSegment|

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
void setPath(const QList<QGeoCoordinate> &path)
*/
$method=5,4,0|void|setPath|const QList<QGeoCoordinate> &

/*
QList<QGeoCoordinate> path() const
*/
$method=5,4,0|QList<QGeoCoordinate>|path|

/*
void setManeuver(const QGeoManeuver &maneuver)
*/
$method=5,4,0|void|setManeuver|const QGeoManeuver &

/*
QGeoManeuver maneuver() const
*/
$method=5,4,0|QGeoManeuver|maneuver|

$extraMethods

#pragma ENDDUMP
