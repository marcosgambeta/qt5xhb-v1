%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGTexture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual bool updateTexture() = 0
$virtualMethod=|bool|updateTexture|

#pragma ENDDUMP
