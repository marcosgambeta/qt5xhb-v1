$header

#include "hbclass.ch"

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD waitForFinished

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
*/
$constructor=|new|const QDBusPendingCall &,QObject *=0

$deleteMethod

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
void waitForFinished()
*/
$method=|void|waitForFinished|

#pragma ENDDUMP
