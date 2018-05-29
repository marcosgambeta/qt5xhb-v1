%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimation

   METHOD new
   METHOD delete

   METHOD addMorphTarget
   METHOD interpolator
   METHOD morphTargetList
   METHOD removeMorphTarget
   METHOD setMorphTargets
   METHOD setTarget
   METHOD setTargetName
   METHOD setTargetPositions
   METHOD target
   METHOD targetName
   METHOD targetPositions
   METHOD updateAnimation

   METHOD onInterpolatorChanged
   METHOD onTargetChanged
   METHOD onTargetNameChanged
   METHOD onTargetPositionsChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVertexBlendAnimation(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QVector<float> targetPositions READ targetPositions WRITE setTargetPositions NOTIFY targetPositionsChanged)
%%

$prototype=QVector<float> targetPositions() const
$prototype=void setTargetPositions(const QVector<float> &targetPositions) (slot)

%%
%% Q_PROPERTY(float interpolator READ interpolator NOTIFY interpolatorChanged)
%%

$prototype=float interpolator() const

%%
%% Q_PROPERTY(Qt3DRender::QGeometryRenderer *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototype=Qt3DRender::QGeometryRenderer *target() const
$prototype=void setTarget(Qt3DRender::QGeometryRenderer *target) (slot)

%%
%% Q_PROPERTY(QString targetName READ targetName WRITE setTargetName NOTIFY targetNameChanged)
%%

$prototype=QString targetName() const
$prototype=void setTargetName(const QString name) (slot)

%%
%%
%%

$prototype=void setMorphTargets(const QVector<Qt3DAnimation::QMorphTarget *> &targets)
$prototype=void addMorphTarget(Qt3DAnimation::QMorphTarget *target)
$prototype=void removeMorphTarget(Qt3DAnimation::QMorphTarget *target)
$prototype=QVector<Qt3DAnimation::QMorphTarget *> morphTargetList()
$prototype=void updateAnimation(float position) (private)

$beginSignals
$signal=|targetPositionsChanged(QVector<float>)
$signal=|interpolatorChanged(float)
$signal=|targetChanged(Qt3DRender::QGeometryRenderer*)
$signal=|targetNameChanged(QString)
$endSignals

#pragma ENDDUMP
