$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGestureManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD registerSensorGestureRecognizer
   METHOD gestureIds
   METHOD recognizerSignals
   METHOD sensorGestureRecognizer

   METHOD onNewSensorGestureAvailable

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QSensorGestureManager(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

/*
bool registerSensorGestureRecognizer(QSensorGestureRecognizer *recognizer)
*/
$method=5,1,0|bool|registerSensorGestureRecognizer|QSensorGestureRecognizer *

/*
QStringList gestureIds() const
*/
$method=5,1,0|QStringList|gestureIds|

/*
QStringList recognizerSignals(const QString &recognizerId) const
*/
$method=5,1,0|QStringList|recognizerSignals|const QString &

/*
static QSensorGestureRecognizer *sensorGestureRecognizer(const QString &id)
*/
$staticMethod=5,1,0|QSensorGestureRecognizer *|sensorGestureRecognizer|const QString &

#pragma ENDDUMP
