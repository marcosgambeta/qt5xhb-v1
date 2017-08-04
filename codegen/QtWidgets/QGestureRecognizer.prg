$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

CLASS QGestureRecognizer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

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
virtual QGesture * create(QObject * target)
*/
$method=|QGesture *|create|QObject *

/*
virtual Result recognize(QGesture * gesture, QObject * watched, QEvent * event) = 0
*/
$method=|QGestureRecognizer::Result|recognize|QGesture *,QObject *,QEvent *

/*
virtual void reset(QGesture * gesture)
*/
$method=|void|reset|QGesture *

/*
static Qt::GestureType registerRecognizer(QGestureRecognizer * recognizer)
*/
$staticMethod=|Qt::GestureType|registerRecognizer|QGestureRecognizer *

/*
static void unregisterRecognizer(Qt::GestureType type)
*/
$staticMethod=|void|unregisterRecognizer|Qt::GestureType

$extraMethods

#pragma ENDDUMP
