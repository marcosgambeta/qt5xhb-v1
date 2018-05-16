%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=Qt3DCore::QNode

   METHOD new
   METHOD delete

   METHOD playbackRate
   METHOD setPlaybackRate

   METHOD onPlaybackRateChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClock(Qt3DCore::QNode *parent = nullptr)
$prototype=QClock(QClockPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

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

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

$beginSignals
$signal=|playbackRateChanged(double)
$endSignals

#pragma ENDDUMP
