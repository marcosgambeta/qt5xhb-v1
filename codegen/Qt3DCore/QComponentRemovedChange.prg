%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSceneChange

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QComponentRemovedChange(const QEntity *entity, const QComponent *component)
$constructor=|new|const QEntity *,const QComponent *

$prototype=~QComponentRemovedChange()
$deleteMethod

$prototype=QNodeId entityId() const Q_DECL_NOTHROW
$method=|QNodeId|entityId|

$prototype=QNodeId componentId() const Q_DECL_NOTHROW
$method=|QNodeId|componentId|

$prototype=const QMetaObject *componentMetaObject() const Q_DECL_NOTHROW
$method=|const QMetaObject *|componentMetaObject|

#pragma ENDDUMP
