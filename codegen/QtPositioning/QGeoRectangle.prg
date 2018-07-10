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

$prototype=QGeoRectangle()
$constructor=5,2,0|new1|

$prototype=QGeoRectangle(const QGeoCoordinate &center, double degreesWidth, double degreesHeight)
$constructor=5,2,0|new2|const QGeoCoordinate &,double,double

$prototype=QGeoRectangle(const QGeoCoordinate &topLeft, const QGeoCoordinate &bottomRight)
$constructor=5,2,0|new3|const QGeoCoordinate &,const QGeoCoordinate &

$prototype=QGeoRectangle(const QGeoRectangle &other)
$constructor=5,2,0|new4|const QGeoRectangle &

$prototype=QGeoRectangle(const QGeoShape &other)
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

$prototype=void setTopLeft(const QGeoCoordinate &topLeft)
$method=5,2,0|void|setTopLeft|const QGeoCoordinate &

$prototype=QGeoCoordinate topLeft() const
$method=5,2,0|QGeoCoordinate|topLeft|

$prototype=void setTopRight(const QGeoCoordinate &topRight)
$method=5,2,0|void|setTopRight|const QGeoCoordinate &

$prototype=QGeoCoordinate topRight() const
$method=5,2,0|QGeoCoordinate|topRight|

$prototype=void setBottomLeft(const QGeoCoordinate &bottomLeft)
$method=5,2,0|void|setBottomLeft|const QGeoCoordinate &

$prototype=QGeoCoordinate bottomLeft() const
$method=5,2,0|QGeoCoordinate|bottomLeft|

$prototype=void setBottomRight(const QGeoCoordinate &bottomRight)
$method=5,2,0|void|setBottomRight|const QGeoCoordinate &

$prototype=QGeoCoordinate bottomRight() const
$method=5,2,0|QGeoCoordinate|bottomRight|

$prototype=void setCenter(const QGeoCoordinate &center)
$method=5,2,0|void|setCenter|const QGeoCoordinate &

$prototype=QGeoCoordinate center() const
$method=5,2,0|QGeoCoordinate|center|

$prototype=void setWidth(double degreesWidth)
$method=5,2,0|void|setWidth|double

$prototype=double width() const
$method=5,2,0|double|width|

$prototype=void setHeight(double degreesHeight)
$method=5,2,0|void|setHeight|double

$prototype=double height() const
$method=5,2,0|double|height|

$prototype=bool contains(const QGeoCoordinate &coordinate) const
$method=5,2,0|bool|contains,contains1|const QGeoCoordinate &

$prototype=bool contains(const QGeoRectangle &rectangle) const
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

$prototype=bool intersects(const QGeoRectangle &rectangle) const
$method=5,2,0|bool|intersects|const QGeoRectangle &

$prototype=void translate(double degreesLatitude, double degreesLongitude)
$method=5,2,0|void|translate|double,double

$prototype=QGeoRectangle translated(double degreesLatitude, double degreesLongitude) const
$method=5,2,0|QGeoRectangle|translated|double,double

$prototype=QGeoRectangle united(const QGeoRectangle &rectangle) const
$method=5,2,0|QGeoRectangle|united|const QGeoRectangle &

#pragma ENDDUMP
