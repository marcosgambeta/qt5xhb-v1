%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QAbstractChannelMapping

   METHOD new
   METHOD delete

   METHOD callback
   METHOD channelName
   METHOD setCallback
   METHOD setChannelName

   METHOD onChannelNameChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCallbackMapping(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QCallbackMapping(QCallbackMappingPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

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

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

$beginSignals
$signal=|channelNameChanged(QString)
$endSignals

#pragma ENDDUMP
