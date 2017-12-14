$header

#include "hbclass.ch"

CLASS QGeoCoordinate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD setLatitude
   METHOD latitude
   METHOD setLongitude
   METHOD longitude
   METHOD setAltitude
   METHOD altitude
   METHOD distanceTo
   METHOD azimuthTo
   METHOD atDistanceAndAzimuth
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoCoordinate()
$constructor=5,2,0|new1|

$prototype=QGeoCoordinate(double latitude, double longitude)
$constructor=5,2,0|new2|double,double

$prototype=QGeoCoordinate(double latitude, double longitude, double altitude)
$constructor=5,2,0|new3|double,double,double

$prototype=QGeoCoordinate(const QGeoCoordinate &other)
$constructor=5,2,0|new4|const QGeoCoordinate &

//[1]QGeoCoordinate()
//[2]QGeoCoordinate(double latitude, double longitude)
//[3]QGeoCoordinate(double latitude, double longitude, double altitude)
//[4]QGeoCoordinate(const QGeoCoordinate &other)

HB_FUNC_STATIC( QGEOCOORDINATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=CoordinateType type() const
$method=5,2,0|QGeoCoordinate::CoordinateType|type|

$prototype=void setLatitude(double latitude)
$method=5,2,0|void|setLatitude|double

$prototype=double latitude() const
$method=5,2,0|double|latitude|

$prototype=void setLongitude(double longitude)
$method=5,2,0|void|setLongitude|double

$prototype=double longitude() const
$method=5,2,0|double|longitude|

$prototype=void setAltitude(double altitude)
$method=5,2,0|void|setAltitude|double

$prototype=double altitude() const
$method=5,2,0|double|altitude|

$prototype=qreal distanceTo(const QGeoCoordinate &other) const
$method=5,2,0|qreal|distanceTo|const QGeoCoordinate &

$prototype=qreal azimuthTo(const QGeoCoordinate &other) const
$method=5,2,0|qreal|azimuthTo|const QGeoCoordinate &

$prototype=QGeoCoordinate atDistanceAndAzimuth(qreal distance, qreal azimuth, qreal distanceUp = 0.0) const
$method=5,2,0|QGeoCoordinate|atDistanceAndAzimuth|qreal,qreal,qreal=0.0

$prototype=QString toString(CoordinateFormat format = DegreesMinutesSecondsWithHemisphere) const
$method=5,2,0|QString|toString|QGeoCoordinate::CoordinateFormat=QGeoCoordinate::DegreesMinutesSecondsWithHemisphere

$extraMethods

#pragma ENDDUMP
