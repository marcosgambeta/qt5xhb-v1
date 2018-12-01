%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoCoordinate>

$prototype=QGeoManeuver()
$internalConstructor=5,4,0|new1|

$prototype=QGeoManeuver(const QGeoManeuver &other)
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

$prototype=bool isValid() const
$method=5,4,0|bool|isValid|

$prototype=void setPosition(const QGeoCoordinate &position)
$method=5,4,0|void|setPosition|const QGeoCoordinate &

$prototype=QGeoCoordinate position() const
$method=5,4,0|QGeoCoordinate|position|

$prototype=void setInstructionText(const QString &instructionText)
$method=5,4,0|void|setInstructionText|const QString &

$prototype=QString instructionText() const
$method=5,4,0|QString|instructionText|

$prototype=void setDirection(InstructionDirection direction)
$method=5,4,0|void|setDirection|QGeoManeuver::InstructionDirection

$prototype=InstructionDirection direction() const
$method=5,4,0|QGeoManeuver::InstructionDirection|direction|

$prototype=void setTimeToNextInstruction(int secs)
$method=5,4,0|void|setTimeToNextInstruction|int

$prototype=int timeToNextInstruction() const
$method=5,4,0|int|timeToNextInstruction|

$prototype=void setDistanceToNextInstruction(qreal distance)
$method=5,4,0|void|setDistanceToNextInstruction|qreal

$prototype=qreal distanceToNextInstruction() const
$method=5,4,0|qreal|distanceToNextInstruction|

$prototype=void setWaypoint(const QGeoCoordinate &coordinate)
$method=5,4,0|void|setWaypoint|const QGeoCoordinate &

$prototype=QGeoCoordinate waypoint() const
$method=5,4,0|QGeoCoordinate|waypoint|

$extraMethods

#pragma ENDDUMP
