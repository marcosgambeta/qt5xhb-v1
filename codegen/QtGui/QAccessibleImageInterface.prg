%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString imageDescription() const = 0
$virtualMethod=|QString|imageDescription|

$prototype=virtual QSize imageSize() const = 0
$virtualMethod=|QSize|imageSize|

$extraMethods

#pragma ENDDUMP
