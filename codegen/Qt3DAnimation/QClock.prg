%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClock(Qt3DCore::QNode *parent = nullptr)
$prototype=QClock(QClockPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QClock()
$deleteMethod

%%
%% Q_PROPERTY(double playbackRate READ playbackRate WRITE setPlaybackRate NOTIFY playbackRateChanged)
%%

$prototype=double playbackRate() const
$prototype=void setPlaybackRate(double playbackRate)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|playbackRateChanged(double)
$endSignals

#pragma ENDDUMP
