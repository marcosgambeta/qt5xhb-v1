%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGeoShape

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoCircle()
$constructor=5,2,0|new1|

$prototype=QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
$constructor=5,2,0|new2|const QGeoCoordinate &,qreal=-1.0

$prototype=QGeoCircle(const QGeoCircle &other)
$constructor=5,2,0|new3|const QGeoCircle &

$prototype=QGeoCircle(const QGeoShape &other)
$constructor=5,2,0|new4|const QGeoShape &

//[1]QGeoCircle()
//[2]QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
//[3]QGeoCircle(const QGeoCircle &other)
//[4]QGeoCircle(const QGeoShape &other)

HB_FUNC_STATIC( QGEOCIRCLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQGEOCOORDINATE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGEOCIRCLE(1) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=void setCenter(const QGeoCoordinate &center)
$method=5,2,0|void|setCenter|const QGeoCoordinate &

$prototype=QGeoCoordinate center() const
$method=5,2,0|QGeoCoordinate|center|

$prototype=void setRadius(qreal radius)
$method=5,2,0|void|setRadius|qreal

$prototype=qreal radius() const
$method=5,2,0|qreal|radius|

$prototype=void translate(double degreesLatitude, double degreesLongitude)
$method=5,2,0|void|translate|double,double

$prototype=QGeoCircle translated(double degreesLatitude, double degreesLongitude) const
$method=5,2,0|QGeoCircle|translated|double,double

#pragma ENDDUMP
