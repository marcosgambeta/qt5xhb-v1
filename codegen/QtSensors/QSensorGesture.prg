$header

#include "hbclass.ch"

CLASS QSensorGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD validIds
   METHOD invalidIds
   METHOD gestureSignals
   METHOD startDetection
   METHOD stopDetection

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QSensorGesture(const QStringList &ids, QObject *parent = 0)
*/
$constructor=5,1,0|new|const QStringList &,QObject *=0

$deleteMethod=5,1,0

/*
bool isActive()
*/
$method=5,1,0|bool|isActive|

/*
QStringList validIds() const
*/
$method=5,1,0|QStringList|validIds|

/*
QStringList invalidIds() const
*/
$method=5,1,0|QStringList|invalidIds|

/*
QStringList gestureSignals() const
*/
$method=5,1,0|QStringList|gestureSignals|

/*
void startDetection()
*/
$method=5,1,0|void|startDetection|

/*
void stopDetection()
*/
$method=5,1,0|void|stopDetection|

#pragma ENDDUMP
