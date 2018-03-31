%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAnimationGroup INHERIT QObject

   METHOD new
%%   METHOD delete

   METHOD addAnimation
   METHOD animationList
   METHOD duration
   METHOD name
   METHOD position
   METHOD removeAnimation
   METHOD setAnimations
   METHOD setName
   METHOD setPosition

   METHOD onNameChanged
   METHOD onPositionChanged
   METHOD onDurationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationGroup(QObject *parent = nullptr)

%% $deleteMethod

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const

$prototype=void setName(const QString &name) (slot)

%%
%% Q_PROPERTY(float position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=float position() const

$prototype=void setPosition(float position) (slot)

%%
%% Q_PROPERTY(float duration READ duration NOTIFY durationChanged)
%%

$prototype=float duration() const

%%
%%
%%

$prototype=QVector<Qt3DAnimation::QAbstractAnimation *> animationList()

$prototype=void setAnimations(const QVector<Qt3DAnimation::QAbstractAnimation *> &animations)

$prototype=void addAnimation(Qt3DAnimation::QAbstractAnimation *animation)

$prototype=void removeAnimation(Qt3DAnimation::QAbstractAnimation *animation)

$beginSignals
$signal=|nameChanged(QString)
$signal=|positionChanged(float)
$signal=|durationChanged(float)
$endSignals

#pragma ENDDUMP
