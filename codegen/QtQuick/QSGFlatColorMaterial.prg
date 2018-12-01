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

$beginClassFrom=QSGMaterial

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGFlatColorMaterial()
$constructor=|new|

$deleteMethod

$prototype=const QColor & color() const
$method=|const QColor &|color|

$prototype=void setColor(const QColor & color)
$method=|void|setColor|const QColor &

#pragma ENDDUMP
