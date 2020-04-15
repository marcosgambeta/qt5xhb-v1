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

#include <QtPositioning/QGeoAddress>
#include <QtPositioning/QGeoCoordinate>
#include <QtPositioning/QGeoRectangle>

$prototype=QGeoLocation()
$internalConstructor=5,2,0|new1|

$prototype=QGeoLocation(const QGeoLocation &other)
$internalConstructor=5,2,0|new2|const QGeoLocation &

/*
[1]QGeoLocation()
[2]QGeoLocation(const QGeoLocation &other)
*/

HB_FUNC_STATIC( QGEOLOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoLocation_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOLOCATION(1) )
  {
    QGeoLocation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=QGeoAddress address() const
$method=5,2,0|QGeoAddress|address|

$prototype=void setAddress(const QGeoAddress &address)
$method=5,2,0|void|setAddress|const QGeoAddress &

$prototype=QGeoCoordinate coordinate() const
$method=5,2,0|QGeoCoordinate|coordinate|

$prototype=void setCoordinate(const QGeoCoordinate &position)
$method=5,2,0|void|setCoordinate|const QGeoCoordinate &

$prototype=QGeoRectangle boundingBox() const
$method=5,2,0|QGeoRectangle|boundingBox|

$prototype=void setBoundingBox(const QGeoRectangle &box)
$method=5,2,0|void|setBoundingBox|const QGeoRectangle &

$prototype=bool isEmpty() const
$method=5,2,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
