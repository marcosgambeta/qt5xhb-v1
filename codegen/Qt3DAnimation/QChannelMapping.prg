%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=explicit QChannelMapping(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QChannelMapping(QChannelMappingPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QChannelMapping()
$deleteMethod

%%
%% Q_PROPERTY(QString channelName READ channelName WRITE setChannelName NOTIFY channelNameChanged)
%%

$prototype=QString channelName() const

$prototype=void setChannelName(const QString &channelName) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QNode *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototype=Qt3DCore::QNode *target() const

$prototype=void setTarget(Qt3DCore::QNode *target) (slot)

%%
%% Q_PROPERTY(QString property READ property WRITE setProperty NOTIFY propertyChanged)
%%

$prototype=QString property() const

$prototype=void setProperty(const QString &property) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

$beginSignals
$signal=|channelNameChanged(QString)
$signal=|targetChanged(Qt3DCore::QNode*)
$signal=|propertyChanged(QString)
$endSignals

#pragma ENDDUMP
