%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTVIDEOSURFACE
#endif

$beginClassFrom=QMediaControl

%%   METHOD new
   METHOD delete

   METHOD setSurface
   METHOD surface

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAbstractVideoSurface>

$prototype=explicit QVideoRendererControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QVideoRendererControl()
$deleteMethod

$prototype=virtual void setSurface(QAbstractVideoSurface * surface) = 0
$virtualMethod=|void|setSurface|QAbstractVideoSurface *

$prototype=virtual QAbstractVideoSurface * surface() const = 0
$virtualMethod=|QAbstractVideoSurface *|surface|

#pragma ENDDUMP
