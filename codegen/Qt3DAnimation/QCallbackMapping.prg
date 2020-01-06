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

$beginClassFrom=QAbstractChannelMapping

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCallbackMapping(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QCallbackMapping(QCallbackMappingPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QCallbackMapping()
$deleteMethod

%%
%% Q_PROPERTY(QString channelName READ channelName WRITE setChannelName NOTIFY channelNameChanged)
%%

$prototype=QString channelName() const

$prototype=void setChannelName(const QString &channelName) (slot)

%%
%%
%%

$prototype=QAnimationCallback *callback() const

$prototype=void setCallback(int type, QAnimationCallback *callback, QAnimationCallback::Flags flags = QAnimationCallback::OnOwningThread)

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

$beginSignals
$signal=|channelNameChanged(QString)
$endSignals

#pragma ENDDUMP
