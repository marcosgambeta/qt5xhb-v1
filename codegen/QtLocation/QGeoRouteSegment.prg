%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QtLocation/QGeoManeuver>
#include <QtPositioning/QGeoCoordinate>

$prototype=QGeoRouteSegment()
$internalConstructor=5,4,0|new1|

$prototype=QGeoRouteSegment(const QGeoRouteSegment &other)
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

$prototype=bool isValid() const
$method=5,4,0|bool|isValid|

$prototype=void setNextRouteSegment(const QGeoRouteSegment &routeSegment)
$method=5,4,0|void|setNextRouteSegment|const QGeoRouteSegment &

$prototype=QGeoRouteSegment nextRouteSegment() const
$method=5,4,0|QGeoRouteSegment|nextRouteSegment|

$prototype=void setTravelTime(int secs)
$method=5,4,0|void|setTravelTime|int

$prototype=int travelTime() const
$method=5,4,0|int|travelTime|

$prototype=void setDistance(qreal distance)
$method=5,4,0|void|setDistance|qreal

$prototype=qreal distance() const
$method=5,4,0|qreal|distance|

$prototype=void setPath(const QList<QGeoCoordinate> &path)
$method=5,4,0|void|setPath|const QList<QGeoCoordinate> &

$prototype=QList<QGeoCoordinate> path() const
$method=5,4,0|QList<QGeoCoordinate>|path|

$prototype=void setManeuver(const QGeoManeuver &maneuver)
$method=5,4,0|void|setManeuver|const QGeoManeuver &

$prototype=QGeoManeuver maneuver() const
$method=5,4,0|QGeoManeuver|maneuver|

$prototype=bool QGeoRouteSegment::isLegLastSegment() const
$method=5,12,0|bool|isLegLastSegment|

$extraMethods

#pragma ENDDUMP
