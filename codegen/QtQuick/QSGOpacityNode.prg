%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGOpacityNode()
$constructor=|new|

$deleteMethod

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

#pragma ENDDUMP
