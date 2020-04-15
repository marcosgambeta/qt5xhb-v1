%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoSatelliteInfo()
$internalConstructor=5,2,0|new1|

$prototype=QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
$internalConstructor=5,2,0|new2|const QGeoSatelliteInfo &

/*
[1]QGeoSatelliteInfo()
[2]QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
*/

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoSatelliteInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOSATELLITEINFO(1) )
  {
    QGeoSatelliteInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=void setSatelliteSystem(SatelliteSystem system)
$method=5,2,0|void|setSatelliteSystem|QGeoSatelliteInfo::SatelliteSystem

$prototype=SatelliteSystem satelliteSystem() const
$method=5,2,0|QGeoSatelliteInfo::SatelliteSystem|satelliteSystem|

$prototype=void setSatelliteIdentifier(int satId)
$method=5,2,0|void|setSatelliteIdentifier|int

$prototype=int satelliteIdentifier() const
$method=5,2,0|int|satelliteIdentifier|

$prototype=void setSignalStrength(int signalStrength)
$method=5,2,0|void|setSignalStrength|int

$prototype=int signalStrength() const
$method=5,2,0|int|signalStrength|

$prototype=void setAttribute(Attribute attribute, qreal value)
$method=5,2,0|void|setAttribute|QGeoSatelliteInfo::Attribute,qreal

$prototype=qreal attribute(Attribute attribute) const
$method=5,2,0|qreal|attribute|QGeoSatelliteInfo::Attribute

$prototype=void removeAttribute(Attribute attribute)
$method=5,2,0|void|removeAttribute|QGeoSatelliteInfo::Attribute

$prototype=bool hasAttribute(Attribute attribute) const
$method=5,2,0|bool|hasAttribute|QGeoSatelliteInfo::Attribute

$extraMethods

#pragma ENDDUMP
