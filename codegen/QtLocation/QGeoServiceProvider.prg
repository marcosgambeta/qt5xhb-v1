%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoCodingManager>
#include <QGeoRoutingManager>
#include <QPlaceManager>

$deleteMethod=5,4,0

$prototype=static QStringList availableServiceProviders()
$staticMethod=5,4,0|QStringList|availableServiceProviders|

$prototype=RoutingFeatures routingFeatures() const
$method=5,4,0|QGeoServiceProvider::RoutingFeatures|routingFeatures|

$prototype=GeocodingFeatures geocodingFeatures() const
$method=5,4,0|QGeoServiceProvider::GeocodingFeatures|geocodingFeatures|

$prototype=MappingFeatures mappingFeatures() const
$method=5,4,0|QGeoServiceProvider::MappingFeatures|mappingFeatures|

$prototype=PlacesFeatures placesFeatures() const
$method=5,4,0|QGeoServiceProvider::PlacesFeatures|placesFeatures|

$prototype=QGeoCodingManager *geocodingManager() const
$method=5,4,0|QGeoCodingManager *|geocodingManager|

$prototype=QGeoMappingManager *mappingManager() const
%% TODO: classe inexistente na documentacao do Qt
%% $method=5,4,0|QGeoMappingManager *|mappingManager|

$prototype=QGeoRoutingManager *routingManager() const
$method=5,4,0|QGeoRoutingManager *|routingManager|

$prototype=QPlaceManager *placeManager() const
$method=5,4,0|QPlaceManager *|placeManager|

$prototype=Error error() const
$method=5,4,0|QGeoServiceProvider::Error|error|

$prototype=QString errorString() const
$method=5,4,0|QString|errorString|

$prototype=void setLocale(const QLocale &locale)
$method=5,4,0|void|setLocale|const QLocale &

$prototype=void setAllowExperimental(bool allow)
$method=5,4,0|void|setAllowExperimental|bool

#pragma ENDDUMP
