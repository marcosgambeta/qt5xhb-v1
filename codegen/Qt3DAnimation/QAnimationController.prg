%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAnimationController INHERIT QObject

   METHOD new
%%   METHOD delete

   METHOD activeAnimationGroup
   METHOD addAnimationGroup
   METHOD animationGroupList
   METHOD entity
   METHOD getAnimationIndex
   METHOD getGroup
   METHOD position
   METHOD positionOffset
   METHOD positionScale
   METHOD recursive
   METHOD removeAnimationGroup
   METHOD setActiveAnimationGroup
   METHOD setAnimationGroups
   METHOD setEntity
   METHOD setPosition
   METHOD setPositionOffset
   METHOD setPositionScale
   METHOD setRecursive

   METHOD onActiveAnimationGroupChanged
   METHOD onEntityChanged
   METHOD onPositionChanged
   METHOD onPositionOffsetChanged
   METHOD onPositionScaleChanged
   METHOD onRecursiveChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAnimationController(QObject *parent = nullptr)

%% $deleteMethod

%%
%% Q_PROPERTY(int activeAnimationGroup READ activeAnimationGroup WRITE setActiveAnimationGroup NOTIFY activeAnimationGroupChanged)
%%

$prototype=int activeAnimationGroup() const

$prototype=void setActiveAnimationGroup(int index) (slot)

%%
%% Q_PROPERTY(float position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=float position() const

$prototype=void setPosition(float position) (slot)

%%
%% Q_PROPERTY(float positionScale READ positionScale WRITE setPositionScale NOTIFY positionScaleChanged)
%%

$prototype=float positionScale() const

$prototype=void setPositionScale(float scale) (slot)

%%
%% Q_PROPERTY(float positionOffset READ positionOffset WRITE setPositionOffset NOTIFY positionOffsetChanged)
%%

$prototype=float positionOffset() const

$prototype=void setPositionOffset(float offset) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QEntity *entity READ entity WRITE setEntity NOTIFY entityChanged)
%%

$prototype=Qt3DCore::QEntity *entity() const

$prototype=void setEntity(Qt3DCore::QEntity *entity) (slot)

%%
%% Q_PROPERTY(bool recursive READ recursive WRITE setRecursive NOTIFY recursiveChanged)
%%

$prototype=bool recursive() const

$prototype=void setRecursive(bool recursive) (slot)

%%
%%
%%

$prototype=QVector<Qt3DAnimation::QAnimationGroup *> animationGroupList()

$prototype=void setAnimationGroups(const QVector<Qt3DAnimation::QAnimationGroup *> &animationGroups)

$prototype=void addAnimationGroup(Qt3DAnimation::QAnimationGroup *animationGroups)

$prototype=void removeAnimationGroup(Qt3DAnimation::QAnimationGroup *animationGroups)

$prototype=Q_INVOKABLE int getAnimationIndex(const QString &name) const

$prototype=Q_INVOKABLE Qt3DAnimation::QAnimationGroup *getGroup(int index) const

$beginSignals
$signal=|activeAnimationGroupChanged(int)
$signal=|positionChanged(float)
$signal=|positionScaleChanged(float)
$signal=|positionOffsetChanged(float)
$signal=|entityChanged(Qt3DCore::QEntity*)
$signal=|recursiveChanged(bool)
$endSignals

#pragma ENDDUMP
