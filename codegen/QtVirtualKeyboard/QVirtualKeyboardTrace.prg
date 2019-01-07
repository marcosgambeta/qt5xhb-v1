%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

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

$prototype=explicit QVirtualKeyboardTrace(QObject *parent = nullptr)

$prototype=~QVirtualKeyboardTrace()
$deleteMethod

%%
%% Q_PROPERTY(int traceId READ traceId WRITE setTraceId NOTIFY traceIdChanged)
%%

$prototype=int traceId() const
$prototype=void setTraceId(int id)

%%
%% Q_PROPERTY(QStringList channels READ channels WRITE setChannels NOTIFY channelsChanged)
%%

$prototype=QStringList channels() const
$prototype=void setChannels(const QStringList &channels)

%%
%% Q_PROPERTY(int length READ length NOTIFY lengthChanged)
%%

$prototype=int length() const

%%
%% Q_PROPERTY(bool final READ isFinal WRITE setFinal NOTIFY finalChanged)
%%

$prototype=bool isFinal() const
$prototype=void setFinal(bool final)

%%
%% Q_PROPERTY(bool canceled READ isCanceled WRITE setCanceled NOTIFY canceledChanged)
%%

$prototype=bool isCanceled() const
$prototype=void setCanceled(bool canceled)

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototype=qreal opacity() const
$prototype=void setOpacity(qreal opacity)

%%
%%
%%

$prototype=Q_INVOKABLE QVariantList points(int pos = 0, int count = -1) const
$prototype=Q_INVOKABLE int addPoint(const QPointF &point)
$prototype=Q_INVOKABLE void setChannelData(const QString &channel, int index, const QVariant &data)
$prototype=Q_INVOKABLE QVariantList channelData(const QString &channel, int pos = 0, int count = -1) const

$beginSignals
$signal=|traceIdChanged(int)
$signal=|channelsChanged()
$signal=|lengthChanged(int)
$signal=|finalChanged(bool)
$signal=|canceledChanged(bool)
$signal=|opacityChanged(qreal)
$endSignals

#pragma ENDDUMP
