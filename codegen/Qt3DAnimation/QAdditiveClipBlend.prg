%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractClipBlendNode

   METHOD new
   METHOD delete

   METHOD additiveFactor
   METHOD baseClip
   METHOD additiveClip
   METHOD setAdditiveFactor
   METHOD setBaseClip
   METHOD setAdditiveClip

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAdditiveClipBlend(Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QAdditiveClipBlend(QAdditiveClipBlendPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QAdditiveClipBlend()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *baseClip READ baseClip WRITE setBaseClip NOTIFY baseClipChanged)
%%

$prototype=Qt3DAnimation::QAbstractClipBlendNode *baseClip() const

$prototype=void setBaseClip(Qt3DAnimation::QAbstractClipBlendNode *baseClip) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *additiveClip READ additiveClip WRITE setAdditiveClip NOTIFY additiveClipChanged)
%%

$prototype=Qt3DAnimation::QAbstractClipBlendNode *additiveClip() const

$prototype=void setAdditiveClip(Qt3DAnimation::QAbstractClipBlendNode *additiveClip) (slot)

%%
%% Q_PROPERTY(float additiveFactor READ additiveFactor WRITE setAdditiveFactor NOTIFY additiveFactorChanged)
%%

$prototype=float additiveFactor() const

$prototype=void setAdditiveFactor(float additiveFactor) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

$beginSignals
$signal=additiveFactorChanged(float)
$signal=baseClipChanged(Qt3DAnimation::QAbstractClipBlendNode*)
$signal=additiveClipChanged(Qt3DAnimation::QAbstractClipBlendNode*)
$endSignals

#pragma ENDDUMP
