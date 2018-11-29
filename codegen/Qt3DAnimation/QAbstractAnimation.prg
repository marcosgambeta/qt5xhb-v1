%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QAbstractAnimation(QAbstractAnimationPrivate &dd, QObject *parent = nullptr) [protected]

%% $deleteMethod

%%
%% Q_PROPERTY(QString animationName READ animationName WRITE setAnimationName NOTIFY animationNameChanged)
%%

$prototype=QString animationName() const
$method=|QString|animationName|

$prototype=void setAnimationName(const QString &name) (slot)
$slotMethod=|void|setAnimationName|const QString &

%%
%% Q_PROPERTY(QAbstractAnimation::AnimationType animationType READ animationType CONSTANT)
%%

$prototype=QAbstractAnimation::AnimationType animationType() const
$method=|QAbstractAnimation::AnimationType|animationType|

%%
%% Q_PROPERTY(float position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=float position() const
$method=|float|position|

$prototype=void setPosition(float position) (slot)
$slotMethod=|void|setPosition|float

%%
%% Q_PROPERTY(float duration READ duration NOTIFY durationChanged)
%%

$prototype=float duration() const
$method=|float|duration|

%%
%%
%%

$prototype=void setDuration(float duration) [protected]

$beginSignals
$signal=|animationNameChanged(QString)
$signal=|durationChanged(float)
$signal=|positionChanged(float)
$endSignals

#pragma ENDDUMP
