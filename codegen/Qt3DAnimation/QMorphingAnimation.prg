%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QAbstractAnimation

   METHOD new
   METHOD delete

   METHOD addMorphTarget
   METHOD easing
   METHOD getWeights
   METHOD interpolator
   METHOD method
   METHOD morphTargetList
   METHOD removeMorphTarget
   METHOD setEasing
   METHOD setMethod
   METHOD setMorphTargets
   METHOD setTarget
   METHOD setTargetName
   METHOD setTargetPositions
   METHOD setWeights
   METHOD target
   METHOD targetName
   METHOD targetPositions

   METHOD onTargetPositionsChanged
   METHOD onInterpolatorChanged
   METHOD onTargetChanged
   METHOD onTargetNameChanged
   METHOD onMethodChanged
   METHOD onEasingChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMorphingAnimation(QObject *parent = nullptr)

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
%% Q_PROPERTY(QMorphingAnimation::Method method READ method WRITE setMethod NOTIFY methodChanged)
%%

$prototype=QMorphingAnimation::Method method() const
$prototype=void setMethod(QMorphingAnimation::Method method) (slot)

%%
%% Q_PROPERTY(QEasingCurve easing READ easing WRITE setEasing NOTIFY easingChanged)
%%

$prototype=QEasingCurve easing() const
$prototype=void setEasing(const QEasingCurve &easing) (slot)

%%
%%
%%

$prototype=void setMorphTargets(const QVector<Qt3DAnimation::QMorphTarget *> &targets)
$prototype=void addMorphTarget(Qt3DAnimation::QMorphTarget *target)
$prototype=void removeMorphTarget(Qt3DAnimation::QMorphTarget *target)
$prototype=void setWeights(int positionIndex, const QVector<float> &weights)
$prototype=QVector<float> getWeights(int positionIndex)
$prototype=QVector<Qt3DAnimation::QMorphTarget *> morphTargetList()
$prototype=void updateAnimation(float position) (private)

$beginSignals
$signal=|targetPositionsChanged(QVector<float>)
$signal=|interpolatorChanged(float)
$signal=|targetChanged(Qt3DRender::QGeometryRenderer*)
$signal=|targetNameChanged(QString)
$signal=|methodChanged(QMorphingAnimation::Method)
$signal=|easingChanged(QEasingCurve)
$endSignals

#pragma ENDDUMP
