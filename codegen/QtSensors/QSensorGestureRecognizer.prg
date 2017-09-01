$header

#include "hbclass.ch"

CLASS QSensorGestureRecognizer INHERIT QObject

   METHOD delete
   METHOD id
   METHOD isActive
   METHOD startBackend
   METHOD stopBackend
   METHOD createBackend
   METHOD gestureSignals

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual QString id() const = 0
*/
$virtualMethod=5,1,0|QString|id|

/*
virtual bool isActive() = 0
*/
$virtualMethod=5,1,0|bool|isActive|

/*
void startBackend()
*/
$method=5,1,0|void|startBackend|

/*
void stopBackend()
*/
$method=5,1,0|void|stopBackend|

/*
void createBackend()
*/
$method=5,1,0|void|createBackend|

/*
QStringList gestureSignals() const
*/
$method=5,1,0|QStringList|gestureSignals|

#pragma ENDDUMP
