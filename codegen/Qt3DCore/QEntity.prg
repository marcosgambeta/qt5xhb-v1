%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QEntity(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QEntity(QEntityPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=virtual ~QEntity()
$deleteMethod

$prototype=QComponentVector components() const
$method=|QComponentVector|components|

$prototype=void addComponent(QComponent *comp)
$method=|void|addComponent|QComponent *

$prototype=void removeComponent(QComponent *comp)
$method=|void|removeComponent|QComponent *

$prototype=QEntity *parentEntity() const
$method=|QEntity *|parentEntity|

$prototype=QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

#pragma ENDDUMP
