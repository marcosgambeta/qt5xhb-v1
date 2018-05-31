%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD advance
   METHOD install
   METHOD uninstall
   METHOD isRunning
   METHOD elapsed
   METHOD setStartTime
   METHOD startTime

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAnimationDriver(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual void advance()
$virtualMethod=|void|advance|

$prototype=void install()
$method=|void|install|

$prototype=void uninstall()
$method=|void|uninstall|

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=virtual qint64 elapsed() const
$virtualMethod=|qint64|elapsed|

$prototype=void setStartTime(qint64 startTime)
$method=|void|setStartTime|qint64

$prototype=qint64 startTime() const
$method=|qint64|startTime|

$beginSignals
$signal=|started()
$signal=|stopped()
$endSignals

#pragma ENDDUMP
