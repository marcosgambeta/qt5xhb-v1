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

$beginClassFrom=Qt3DCore::QNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QChannelMapper(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QChannelMapper(QChannelMapperPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QChannelMapper()
$deleteMethod

$prototype=void addMapping(QAbstractChannelMapping *mapping)
$prototype=void removeMapping(QAbstractChannelMapping *mapping)
$prototype=QVector<QAbstractChannelMapping *> mappings() const
$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

#pragma ENDDUMP
