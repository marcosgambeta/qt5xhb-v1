$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
#endif

CLASS QDBusPendingCall

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isFinished
   METHOD waitForFinished
   METHOD isError
   METHOD isValid
   METHOD error
   METHOD reply
   METHOD fromError
   METHOD fromCompletedCall

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
QDBusPendingCall(const QDBusPendingCall &other)
*/
$constructor=|new|const QDBusPendingCall &

$deleteMethod

/*
void swap(QDBusPendingCall &other)
*/
$method=|void|swap|QDBusPendingCall &

/*
bool isFinished() const
*/
$method=|bool|isFinished||#ifndef Q_QDOC

/*
void waitForFinished()
*/
$method=|void|waitForFinished||#ifndef Q_QDOC

/*
bool isError() const
*/
$method=|bool|isError||#ifndef Q_QDOC

/*
bool isValid() const
*/
$method=|bool|isValid||#ifndef Q_QDOC

/*
QDBusError error() const
*/
$method=|QDBusError|error||#ifndef Q_QDOC

/*
QDBusMessage reply() const
*/
$method=|QDBusMessage|reply||#ifndef Q_QDOC

/*
static QDBusPendingCall fromError(const QDBusError &error)
*/
$staticMethod=|QDBusPendingCall|fromError|const QDBusError &

/*
static QDBusPendingCall fromCompletedCall(const QDBusMessage &message)
*/
$staticMethod=|QDBusPendingCall|fromCompletedCall|const QDBusMessage &

$extraMethods

#pragma ENDDUMP
