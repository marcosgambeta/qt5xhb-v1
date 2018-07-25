%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=~QAbstractSkeleton()
$deleteMethod

%%
%% Q_PROPERTY(int jointCount READ jointCount NOTIFY jointCountChanged)
%%

$prototype=int jointCount() const
$method=|int|jointCount|

%%
%%
%%

$prototype=QAbstractSkeleton(QAbstractSkeletonPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=void sceneChangeEvent(const QSceneChangePtr &change) override (protected)

$beginSignals
$signal=|jointCountChanged(int)
$endSignals

#pragma ENDDUMP
