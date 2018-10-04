%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoShape()
$internalConstructor=5,2,0|new1|

$prototype=QGeoShape(const QGeoShape &other)
$internalConstructor=5,2,0|new2|const QGeoShape &

//[1]QGeoShape()
//[2]QGeoShape(const QGeoShape &other)

HB_FUNC_STATIC( QGEOSHAPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoShape_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoShape_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=ShapeType type() const
$method=5,2,0|QGeoShape::ShapeType|type|

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=bool isEmpty() const
$method=5,2,0|bool|isEmpty|

$prototype=bool contains(const QGeoCoordinate &coordinate) const
$method=5,2,0|bool|contains|const QGeoCoordinate &

$extraMethods

#pragma ENDDUMP
