%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractChannelMapping

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSkeletonMapping(Qt3DCore::QNode *parent = nullptr)
$prototype=QSkeletonMapping(QSkeletonMappingPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QSkeletonMapping()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DCore::QAbstractSkeleton* skeleton READ skeleton WRITE setSkeleton NOTIFY skeletonChanged)
%%

$prototype=Qt3DCore::QAbstractSkeleton *skeleton() const
$prototype=void setSkeleton(Qt3DCore::QAbstractSkeleton *skeleton) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|skeletonChanged(Qt3DCore::QAbstractSkeleton*)
$endSignals

#pragma ENDDUMP
