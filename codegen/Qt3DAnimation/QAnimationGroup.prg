%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

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
