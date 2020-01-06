%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QBackendNodeMapper()
$deleteMethod

$prototype=virtual QBackendNode *create(const QNodeCreatedChangeBasePtr &change) const = 0
%% TODO: implementar
%% $virtualMethod=|QBackendNode *|create|const QNodeCreatedChangeBasePtr &

$prototype=virtual QBackendNode *get(QNodeId id) const = 0
$virtualMethod=|QBackendNode *|get|QNodeId

$prototype=virtual void destroy(QNodeId id) const = 0
$virtualMethod=|void|destroy|QNodeId

$extraMethods

#pragma ENDDUMP
