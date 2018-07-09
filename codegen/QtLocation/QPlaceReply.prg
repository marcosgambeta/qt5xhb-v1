%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceReply(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=bool isFinished() const
$method=5,4,0|bool|isFinished|

$prototype=virtual Type type() const
$virtualMethod=5,4,0|QPlaceReply::Type|type|

$prototype=QString errorString() const
$method=5,4,0|QString|errorString|

$prototype=QPlaceReply::Error error() const
$method=5,4,0|QPlaceReply::Error|error|

$prototype=virtual void abort()
$virtualMethod=5,4,0|void|abort|

$beginSignals
$signal=5,4,0|finished()
$signal=5,4,0|error(QPlaceReply::Error,QString)
$endSignals

#pragma ENDDUMP
