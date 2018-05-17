%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

$beginClassFrom=QSGMaterial

   METHOD new
   METHOD delete
   METHOD color
   METHOD setColor

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
