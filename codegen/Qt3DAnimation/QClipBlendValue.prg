%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DAnimation::QAbstractClipBlendNode

   METHOD new
   METHOD delete

   METHOD clip
   METHOD setClip

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClipBlendValue(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QClipBlendValue(Qt3DAnimation::QAbstractAnimationClip *clip, Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QClipBlendValue(QClipBlendValuePrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QClipBlendValue()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractAnimationClip *clip READ clip WRITE setClip NOTIFY clipChanged)
%%

$prototype=Qt3DAnimation::QAbstractAnimationClip *clip() const
$prototype=void setClip(Qt3DAnimation::QAbstractAnimationClip *clip) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

$beginSignals
$signal=|clipChanged(Qt3DAnimation::QAbstractAnimationClip*)
$endSignals

#pragma ENDDUMP
