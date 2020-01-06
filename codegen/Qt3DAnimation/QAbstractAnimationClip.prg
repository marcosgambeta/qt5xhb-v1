%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QAbstractAnimationClip(QAbstractAnimationClipPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAbstractAnimationClip()
$deleteMethod

%%
%% Q_PROPERTY(float duration READ duration NOTIFY durationChanged)
%%

$prototype=float duration() const
$method=|float|duration|

%%
%%
%%

$prototype=void sceneChangeEvent(const Qt3DCore::QSceneChangePtr &change) Q_DECL_OVERRIDE [protected]

$beginSignals
$signal=|durationChanged(float)
$endSignals

#pragma ENDDUMP
