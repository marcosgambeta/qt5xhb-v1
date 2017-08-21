$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlIncubator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD forceCompletion
   METHOD incubationMode
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD object
   METHOD status

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

/*
QQmlIncubator(IncubationMode mode = Asynchronous)
*/
$constructor=|new|QQmlIncubator::IncubationMode=QQmlIncubator::Asynchronous)

$deleteMethod

/*
void clear()
*/
$method=|void|clear|

/*
void forceCompletion()
*/
$method=|void|forceCompletion|

/*
IncubationMode incubationMode() const
*/
$method=|QQmlIncubator::IncubationMode|incubationMode|

/*
bool isError() const
*/
$method=|bool|isError|

/*
bool isLoading() const
*/
$method=|bool|isLoading|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool isReady() const
*/
$method=|bool|isReady|

/*
QObject * object() const
*/
$method=|QObject *|object|

/*
Status status() const
*/
$method=|QQmlIncubator::Status|status|

$extraMethods

#pragma ENDDUMP
