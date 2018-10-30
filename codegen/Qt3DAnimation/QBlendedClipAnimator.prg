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

$prototype=explicit QBlendedClipAnimator(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QBlendedClipAnimator(QBlendedClipAnimatorPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QBlendedClipAnimator()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *blendTree READ blendTree WRITE setBlendTree NOTIFY blendTreeChanged)
%%

$prototype=QAbstractClipBlendNode *blendTree() const

$prototype=void setBlendTree(QAbstractClipBlendNode * blendTree) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|blendTreeChanged(QAbstractClipBlendNode*)
$endSignals

#pragma ENDDUMP
