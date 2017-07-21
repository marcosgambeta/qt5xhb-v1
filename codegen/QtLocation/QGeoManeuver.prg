$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoManeuver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setPosition
   METHOD position
   METHOD setInstructionText
   METHOD instructionText
   METHOD setDirection
   METHOD direction
   METHOD setTimeToNextInstruction
   METHOD timeToNextInstruction
   METHOD setDistanceToNextInstruction
   METHOD distanceToNextInstruction
   METHOD setWaypoint
   METHOD waypoint

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoCoordinate>

/*
QGeoManeuver()
*/
$internalConstructor=5,4,0|new1|

/*
QGeoManeuver(const QGeoManeuver &other)
*/
$internalConstructor=5,4,0|new2|const QGeoManeuver &

//[1]QGeoManeuver()
//[2]QGeoManeuver(const QGeoManeuver &other)

HB_FUNC_STATIC( QGEOMANEUVER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoManeuver_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    QGeoManeuver_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
bool isValid() const
*/
$method=5,4,0|bool|isValid|

/*
void setPosition(const QGeoCoordinate &position)
*/
$method=5,4,0|void|setPosition|const QGeoCoordinate &

/*
QGeoCoordinate position() const
*/
$method=5,4,0|QGeoCoordinate|position|

/*
void setInstructionText(const QString &instructionText)
*/
$method=5,4,0|void|setInstructionText|const QString &

/*
QString instructionText() const
*/
$method=5,4,0|QString|instructionText|

/*
void setDirection(InstructionDirection direction)
*/
$method=5,4,0|void|setDirection|QGeoManeuver::InstructionDirection

/*
InstructionDirection direction() const
*/
$method=5,4,0|QGeoManeuver::InstructionDirection|direction|

/*
void setTimeToNextInstruction(int secs)
*/
$method=5,4,0|void|setTimeToNextInstruction|int

/*
int timeToNextInstruction() const
*/
$method=5,4,0|int|timeToNextInstruction|

/*
void setDistanceToNextInstruction(qreal distance)
*/
$method=5,4,0|void|setDistanceToNextInstruction|qreal

/*
qreal distanceToNextInstruction() const
*/
$method=5,4,0|qreal|distanceToNextInstruction|

/*
void setWaypoint(const QGeoCoordinate &coordinate)
*/
$method=5,4,0|void|setWaypoint|const QGeoCoordinate &

/*
QGeoCoordinate waypoint() const
*/
$method=5,4,0|QGeoCoordinate|waypoint|

$extraMethods

#pragma ENDDUMP
