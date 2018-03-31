%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstractClipAnimator INHERIT Qt3DCore::QComponent

%%   METHOD new
   METHOD delete

   METHOD isRunning
   METHOD channelMapper
   METHOD loopCount
   METHOD clock
   METHOD setRunning
   METHOD setChannelMapper
   METHOD setLoopCount
   METHOD setClock
   METHOD start
   METHOD stop

   METHOD onRunningChanged
   METHOD onChannelMapperChanged
   METHOD onLoopCountChanged
   METHOD onClockChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractClipAnimator(Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=QAbstractClipAnimator(QAbstractClipAnimatorPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QAbstractClipAnimator()
$deleteMethod

%%
%% Q_PROPERTY(bool running READ isRunning WRITE setRunning NOTIFY runningChanged)
%%

$prototype=bool isRunning() const

$prototype=void setRunning(bool running) (slot)

%%
%% Q_PROPERTY(int loops READ loopCount WRITE setLoopCount NOTIFY loopCountChanged)
%%

$prototype=int loopCount() const

$prototype=void setLoopCount(int loops) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QChannelMapper *channelMapper READ channelMapper WRITE setChannelMapper NOTIFY channelMapperChanged)
%%

$prototype=Qt3DAnimation::QChannelMapper *channelMapper() const

$prototype=void setChannelMapper(Qt3DAnimation::QChannelMapper *channelMapper) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QClock *clock READ clock WRITE setClock NOTIFY clockChanged)
%%

$prototype=Qt3DAnimation::QClock *clock() const

$prototype=void setClock(Qt3DAnimation::QClock *clock) (slot)

%%
%%
%%

$prototype=void start() (slot)

$prototype=void stop() (slot)

$beginSignals
$signal=|runningChanged(bool)
$signal=|channelMapperChanged(Qt3DAnimation::QChannelMapper*)
$signal=|loopCountChanged(int)
$signal=|clockChanged(Qt3DAnimation::QClock*)
$endSignals

#pragma ENDDUMP
