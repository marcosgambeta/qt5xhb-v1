$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD calculateRoute
   METHOD updateRoute
   METHOD supportedTravelModes
   METHOD supportedFeatureTypes
   METHOD supportedFeatureWeights
   METHOD supportedRouteOptimizations
   METHOD supportedSegmentDetails
   METHOD supportedManeuverDetails
   METHOD setLocale
   METHOD locale
   METHOD setMeasurementSystem
   METHOD measurementSystem

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

/*
QString managerName() const
*/
$method=5,4,0|QString|managerName|

/*
int managerVersion() const
*/
$method=5,4,0|int|managerVersion|

/*
virtual QGeoRouteReply *calculateRoute(const QGeoRouteRequest &request) = 0
*/
$method=5,4,0|QGeoRouteReply *|calculateRoute|const QGeoRouteRequest &

/*
virtual QGeoRouteReply *updateRoute(const QGeoRoute &route, const QGeoCoordinate &position)
*/
$method=5,4,0|QGeoRouteReply *|updateRoute|const QGeoRoute &,const QGeoCoordinate &

/*
QGeoRouteRequest::TravelModes supportedTravelModes() const
*/
$method=5,4,0|QGeoRouteRequest::TravelModes|supportedTravelModes|

/*
QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
*/
$method=5,4,0|QGeoRouteRequest::FeatureTypes|supportedFeatureTypes|

/*
QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
*/
$method=5,4,0|QGeoRouteRequest::FeatureWeights|supportedFeatureWeights|

/*
QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
*/
$method=5,4,0|QGeoRouteRequest::RouteOptimizations|supportedRouteOptimizations|

/*
QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
*/
$method=5,4,0|QGeoRouteRequest::SegmentDetails|supportedSegmentDetails|

/*
QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
*/
$method=5,4,0|QGeoRouteRequest::ManeuverDetails|supportedManeuverDetails|

/*
void setLocale(const QLocale &locale)
*/
$method=5,4,0|void|setLocale|const QLocale &

/*
QLocale locale() const
*/
$method=5,4,0|QLocale|locale|

/*
void setMeasurementSystem(QLocale::MeasurementSystem system)
*/
$method=5,4,0|void|setMeasurementSystem|QLocale::MeasurementSystem

/*
QLocale::MeasurementSystem measurementSystem() const
*/
$method=5,4,0|QLocale::MeasurementSystem|measurementSystem|

#pragma ENDDUMP
