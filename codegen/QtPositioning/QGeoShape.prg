$header

#include "hbclass.ch"

CLASS QGeoShape

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD type
   METHOD isValid
   METHOD isEmpty
   METHOD contains

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

/*
QGeoShape()
*/
$constructor=5,2,0|new1|

/*
QGeoShape(const QGeoShape &other)
*/
$constructor=5,2,0|new2|const QGeoShape &

//[1]QGeoShape()
//[2]QGeoShape(const QGeoShape &other)

HB_FUNC_STATIC( QGEOSHAPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOSHAPE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEOSHAPE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
ShapeType type() const
*/
$method=5,2,0|QGeoShape::ShapeType|type|

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
bool isEmpty() const
*/
$method=5,2,0|bool|isEmpty|

/*
bool contains(const QGeoCoordinate &coordinate) const
*/
$method=5,2,0|bool|contains|const QGeoCoordinate &

$extraMethods

#pragma ENDDUMP
