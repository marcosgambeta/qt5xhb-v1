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

   METHOD addKeyframe
   METHOD easing
   METHOD endMode
   METHOD framePositions
   METHOD keyframeList
   METHOD removeKeyframe
   METHOD setEasing
   METHOD setEndMode
   METHOD setFramePositions
   METHOD setKeyframes
   METHOD setStartMode
   METHOD setTarget
   METHOD setTargetName
   METHOD startMode
   METHOD target
   METHOD targetName

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QKeyframeAnimation(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QVector<float> framePositions READ framePositions WRITE setFramePositions NOTIFY framePositionsChanged)
%%

$prototype=QVector<float> framePositions() const
$prototype=void setFramePositions(const QVector<float> &positions) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QTransform *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototype=Qt3DCore::QTransform *target() const
$prototype=void setTarget(Qt3DCore::QTransform *target) (slot)

%%
%% Q_PROPERTY(QEasingCurve easing READ easing WRITE setEasing NOTIFY easingChanged)
%%

$prototype=QEasingCurve easing() const
$prototype=void setEasing(const QEasingCurve &easing) (slot)

%%
%% Q_PROPERTY(QString targetName READ targetName WRITE setTargetName NOTIFY targetNameChanged)
%%

$prototype=QString targetName() const
$prototype=void setTargetName(const QString &name) (slot)

%%
%% Q_PROPERTY(QKeyframeAnimation::RepeatMode startMode READ startMode WRITE setStartMode NOTIFY startModeChanged)
%%

$prototype=RepeatMode startMode() const
$prototype=void setStartMode(RepeatMode mode) (slot)

%%
%% Q_PROPERTY(QKeyframeAnimation::RepeatMode endMode READ endMode WRITE setEndMode NOTIFY endModeChanged)
%%

$prototype=RepeatMode endMode() const
$prototype=void setEndMode(RepeatMode mode) (slot)

%%
%%
%%

$prototype=QVector<Qt3DCore::QTransform *> keyframeList() const
$prototype=void setKeyframes(const QVector<Qt3DCore::QTransform *> &keyframes)
$prototype=void addKeyframe(Qt3DCore::QTransform *keyframe)
$prototype=void removeKeyframe(Qt3DCore::QTransform *keyframe)
$prototype=void updateAnimation(float position) (private)

$beginSignals
$signal=|framePositionsChanged(QVector<float>)
$signal=|targetChanged(Qt3DCore::QTransform*)
$signal=|easingChanged(QEasingCurve)
$signal=|targetNameChanged(QString)
$signal=|startModeChanged(QKeyframeAnimation::RepeatMode)
$signal=|endModeChanged(QKeyframeAnimation::RepeatMode)
$endSignals

#pragma ENDDUMP
