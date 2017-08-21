$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOADDRESS
REQUEST QGEOCOORDINATE
REQUEST QGEORECTANGLE
#endif

CLASS QGeoLocation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD address
   METHOD setAddress
   METHOD coordinate
   METHOD setCoordinate
   METHOD boundingBox
   METHOD setBoundingBox
   METHOD isEmpty

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

#include <QGeoAddress>
#include <QGeoCoordinate>
#include <QGeoRectangle>

/*
QGeoLocation()
*/
$constructor=5,2,0|new1|

/*
QGeoLocation(const QGeoLocation &other)
*/
$constructor=5,2,0|new2|const QGeoLocation &

//[1]QGeoLocation()
//[2]QGeoLocation(const QGeoLocation &other)

HB_FUNC_STATIC( QGEOLOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOLOCATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOLOCATION(1) )
  {
    HB_FUNC_EXEC( QGEOLOCATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QGeoAddress address() const
*/
$method=5,2,0|QGeoAddress|address|

/*
void setAddress(const QGeoAddress &address)
*/
$method=5,2,0|void|setAddress|const QGeoAddress &

/*
QGeoCoordinate coordinate() const
*/
$method=5,2,0|QGeoCoordinate|coordinate|

/*
void setCoordinate(const QGeoCoordinate &position)
*/
$method=5,2,0|void|setCoordinate|const QGeoCoordinate &

/*
QGeoRectangle boundingBox() const
*/
$method=5,2,0|QGeoRectangle|boundingBox|

/*
void setBoundingBox(const QGeoRectangle &box)
*/
$method=5,2,0|void|setBoundingBox|const QGeoRectangle &

/*
bool isEmpty() const
*/
$method=5,2,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
