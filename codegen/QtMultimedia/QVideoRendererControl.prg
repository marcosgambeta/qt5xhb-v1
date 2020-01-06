%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtMultimedia/QAbstractVideoSurface>

$prototype=explicit QVideoRendererControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QVideoRendererControl()
$deleteMethod

$prototype=virtual void setSurface(QAbstractVideoSurface * surface) = 0
$virtualMethod=|void|setSurface|QAbstractVideoSurface *

$prototype=virtual QAbstractVideoSurface * surface() const = 0
$virtualMethod=|QAbstractVideoSurface *|surface|

#pragma ENDDUMP
