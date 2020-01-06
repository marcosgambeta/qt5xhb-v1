%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QDBusPendingCall

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
$constructor=|new|const QDBusPendingCall &,QObject *=0

$deleteMethod

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=void waitForFinished()
$method=|void|waitForFinished|

$beginSignals
$signal=|finished(QDBusPendingCallWatcher*)
$endSignals

#pragma ENDDUMP
