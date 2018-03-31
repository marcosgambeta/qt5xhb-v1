%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QChannelMapper INHERIT Qt3DCore::QNode

   METHOD new
   METHOD delete

   METHOD addMapping
   METHOD mappings
   METHOD removeMapping

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QChannelMapper(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QChannelMapper(QChannelMapperPrivate &dd, Qt3DCore::QNode *parent = nullptr) (protected)

$prototype=~QChannelMapper()
$deleteMethod

$prototype=void addMapping(QAbstractChannelMapping *mapping)
$prototype=void removeMapping(QAbstractChannelMapping *mapping)
$prototype=QVector<QAbstractChannelMapping *> mappings() const
$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE (private)

#pragma ENDDUMP
