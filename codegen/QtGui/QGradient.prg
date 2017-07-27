$header

#include "hbclass.ch"

CLASS QGradient

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD coordinateMode
   METHOD setColorAt
   METHOD setCoordinateMode
   METHOD setSpread
   METHOD spread
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
CoordinateMode coordinateMode () const
*/
$method=|QGradient::CoordinateMode|coordinateMode|

/*
void setColorAt ( qreal position, const QColor & color )
*/
$method=|void|setColorAt|qreal,const QColor &

/*
void setCoordinateMode ( CoordinateMode mode )
*/
$method=|void|setCoordinateMode|QGradient::CoordinateMode

/*
void setSpread ( Spread method )
*/
$method=|void|setSpread|QGradient::Spread

/*
Spread spread () const
*/
$method=|QGradient::Spread|spread|t

/*
Type type () const
*/
$method=|QGradient::Type|type|

$extraMethods

#pragma ENDDUMP
