%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QComponent

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QArmature(Qt3DCore::QNode *parent = nullptr)
$constuctor=|new|Qt3DCore::QNode *=nullptr

$prototype=QArmature(QArmaturePrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QArmature()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DCore::QAbstractSkeleton* skeleton READ skeleton WRITE setSkeleton NOTIFY skeletonChanged)
%%

$prototype=QAbstractSkeleton* skeleton() const
$method=|QAbstractSkeleton *|skeleton|

$prototype=void setSkeleton(Qt3DCore::QAbstractSkeleton* skeleton) (slot)
$slotMethod=|void|setSkeleton|Qt3DCore::QAbstractSkeleton *

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const override [private]

$beginSignals
$signal=|skeletonChanged(Qt3DCore::QAbstractSkeleton*)
$endSignals

#pragma ENDDUMP
