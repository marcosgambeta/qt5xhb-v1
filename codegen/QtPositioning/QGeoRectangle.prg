$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoRectangle INHERIT QGeoShape

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD setTopLeft
   METHOD topLeft
   METHOD setTopRight
   METHOD topRight
   METHOD setBottomLeft
   METHOD bottomLeft
   METHOD setBottomRight
   METHOD bottomRight
   METHOD setCenter
   METHOD center
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height
   METHOD contains1
   METHOD contains2
   METHOD contains
   METHOD intersects
   METHOD translate
   METHOD translated
   METHOD united

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QGeoRectangle()
*/
$constructor=5,2,0|new1|

/*
QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
*/
$constructor=5,2,0|new2|const QGeoCoordinate &,double,double

/*
QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
*/
$constructor=5,2,0|new3|const QGeoCoordinate &,const QGeoCoordinate &

/*
QGeoRectangle(const QGeoRectangle &other)
*/
$constructor=5,2,0|new4|const QGeoRectangle &

/*
QGeoRectangle(const QGeoShape &other)
*/
$constructor=5,2,0|new5|const QGeoShape &

//[1]QGeoRectangle()
//[2]QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
//[3]QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
//[4]QGeoRectangle(const QGeoRectangle &other)
//[5]QGeoRectangle(const QGeoShape &other)

HB_FUNC_STATIC( QGEORECTANGLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQGEOCOORDINATE(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
void setTopLeft(const QGeoCoordinate &topLeft)
*/
$method=5,2,0|void|setTopLeft|const QGeoCoordinate &

/*
QGeoCoordinate topLeft() const
*/
$method=5,2,0|QGeoCoordinate|topLeft|

/*
void setTopRight(const QGeoCoordinate &topRight)
*/
$method=5,2,0|void|setTopRight|const QGeoCoordinate &

/*
QGeoCoordinate topRight() const
*/
$method=5,2,0|QGeoCoordinate|topRight|

/*
void setBottomLeft(const QGeoCoordinate &bottomLeft)
*/
$method=5,2,0|void|setBottomLeft|const QGeoCoordinate &

/*
QGeoCoordinate bottomLeft() const
*/
$method=5,2,0|QGeoCoordinate|bottomLeft|

/*
void setBottomRight(const QGeoCoordinate &bottomRight)
*/
$method=5,2,0|void|setBottomRight|const QGeoCoordinate &

/*
QGeoCoordinate bottomRight() const
*/
$method=5,2,0|QGeoCoordinate|bottomRight|

/*
void setCenter(const QGeoCoordinate &center)
*/
$method=5,2,0|void|setCenter|const QGeoCoordinate &

/*
QGeoCoordinate center() const
*/
$method=5,2,0|QGeoCoordinate|center|

/*
void setWidth(double degreesWidth)
*/
$method=5,2,0|void|setWidth|double

/*
double width() const
*/
$method=5,2,0|double|width|

/*
void setHeight(double degreesHeight)
*/
$method=5,2,0|void|setHeight|double

/*
double height() const
*/
$method=5,2,0|double|height|

/*
bool contains(const QGeoCoordinate &coordinate) const
*/
$method=5,2,0|bool|contains,contains1|const QGeoCoordinate &

/*
bool contains(const QGeoRectangle &rectangle) const
*/
$method=5,2,0|bool|contains,contains2|const QGeoRectangle &

//[1]bool contains(const QGeoCoordinate &coordinate) const
//[2]bool contains(const QGeoRectangle &rectangle) const

HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_CONTAINS1 );
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    HB_FUNC_EXEC( QGEORECTANGLE_CONTAINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

}

/*
bool intersects(const QGeoRectangle &rectangle) const
*/
$method=5,2,0|bool|intersects|const QGeoRectangle &

/*
void translate(double degreesLatitude, double degreesLongitude)
*/
$method=5,2,0|void|translate|double,double

/*
QGeoRectangle translated(double degreesLatitude, double degreesLongitude) const
*/
$method=5,2,0|QGeoRectangle|translated|double,double

/*
QGeoRectangle united(const QGeoRectangle &rectangle) const
*/
$method=5,2,0|QGeoRectangle|united|const QGeoRectangle &

#pragma ENDDUMP
