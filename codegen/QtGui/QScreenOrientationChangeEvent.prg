%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScreen>

$prototype=QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
$constructor=|new|QScreen *,Qt::ScreenOrientation

$deleteMethod

$prototype=QScreen *screen() const
$method=|QScreen *|screen|

$prototype=Qt::ScreenOrientation orientation() const
$method=|Qt::ScreenOrientation|orientation|

#pragma ENDDUMP
