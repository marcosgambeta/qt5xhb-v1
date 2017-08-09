$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODINGMANAGER
REQUEST QGEOMAPPINGMANAGER
REQUEST QGEOROUTINGMANAGER
REQUEST QPLACEMANAGER
#endif

CLASS QGeoServiceProvider INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availableServiceProviders
   METHOD routingFeatures
   METHOD geocodingFeatures
   METHOD mappingFeatures
   METHOD placesFeatures
   METHOD geocodingManager
   METHOD mappingManager
   METHOD routingManager
   METHOD placeManager
   METHOD error
   METHOD errorString
   METHOD setLocale
   METHOD setAllowExperimental

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

/*
static QStringList availableServiceProviders()
*/
$staticMethod=5,4,0|QStringList|availableServiceProviders|

/*
RoutingFeatures routingFeatures() const
*/
$method=5,4,0|QGeoServiceProvider::RoutingFeatures|routingFeatures|

/*
GeocodingFeatures geocodingFeatures() const
*/
$method=5,4,0|QGeoServiceProvider::GeocodingFeatures|geocodingFeatures|

/*
MappingFeatures mappingFeatures() const
*/
$method=5,4,0|QGeoServiceProvider::MappingFeatures|mappingFeatures|

/*
PlacesFeatures placesFeatures() const
*/
$method=5,4,0|QGeoServiceProvider::PlacesFeatures|placesFeatures|

/*
QGeoCodingManager *geocodingManager() const
*/
$method=5,4,0|QGeoCodingManager *|geocodingManager|

/*
QGeoMappingManager *mappingManager() const
*/
%% TODO: classe inexistente na documentacao do Qt
%% $method=5,4,0|QGeoMappingManager *|mappingManager|

/*
QGeoRoutingManager *routingManager() const
*/
$method=5,4,0|QGeoRoutingManager *|routingManager|

/*
QPlaceManager *placeManager() const
*/
$method=5,4,0|QPlaceManager *|placeManager|

/*
Error error() const
*/
$method=5,4,0|QGeoServiceProvider::Error|error|

/*
QString errorString() const
*/
$method=5,4,0|QString|errorString|

/*
void setLocale(const QLocale &locale)
*/
$method=5,4,0|void|setLocale|const QLocale &

/*
void setAllowExperimental(bool allow)
*/
$method=5,4,0|void|setAllowExperimental|bool

#pragma ENDDUMP
