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

CLASS QVideoRendererControl INHERIT QMediaControl

   METHOD delete
   METHOD setSurface
   METHOD surface

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void setSurface(QAbstractVideoSurface * surface) = 0
$virtualMethod=|void|setSurface|QAbstractVideoSurface *

$prototype=virtual QAbstractVideoSurface * surface() const = 0
$virtualMethod=|QAbstractVideoSurface *|surface|

#pragma ENDDUMP
