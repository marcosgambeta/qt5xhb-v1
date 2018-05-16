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

   METHOD duration

   METHOD onDurationChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractAnimationClip(QAbstractAnimationClipPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

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

$prototype=void sceneChangeEvent(const Qt3DCore::QSceneChangePtr &change) Q_DECL_OVERRIDE (protected)

$beginSignals
$signal=|durationChanged(float)
$endSignals

#pragma ENDDUMP
