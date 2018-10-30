%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DAnimation::QAbstractClipAnimator

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClipAnimator(Qt3DCore::QNode *parent = nullptr)
$prototype=QClipAnimator(QClipAnimatorPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QClipAnimator()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractAnimationClip *clip READ clip WRITE setClip NOTIFY clipChanged)
%%

$prototype=Qt3DAnimation::QAbstractAnimationClip *clip() const
$prototype=void setClip(Qt3DAnimation::QAbstractAnimationClip *clip) (slot)

%%
%%
%%

$prototype=void sceneChangeEvent(const Qt3DCore::QSceneChangePtr &change) override [protected]
$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|clipChanged(Qt3DAnimation::QAbstractAnimationClip*)
$endSignals

#pragma ENDDUMP
