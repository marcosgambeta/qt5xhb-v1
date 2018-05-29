%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimationClip

   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationClip(Qt3DCore::QNode *parent = nullptr)

$prototype=QAnimationClip(QAnimationClipPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QAnimationClip()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAnimationClipData clipData READ clipData WRITE setClipData NOTIFY clipDataChanged)
%%

$prototype=Qt3DAnimation::QAnimationClipData clipData() const

$prototype=void setClipData(const Qt3DAnimation::QAnimationClipData &clipData) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

$beginSignals
$signal=|clipDataChanged|Qt3DAnimation::QAnimationClipData
$endSignals

#pragma ENDDUMP
