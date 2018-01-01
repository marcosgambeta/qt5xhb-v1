%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGGEOMETRY
#endif

CLASS QSGBasicGeometryNode INHERIT QSGNode

   METHOD delete
   METHOD geometry
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QSGGeometry * geometry()
$method=|QSGGeometry *|geometry|

$prototype=void setGeometry(QSGGeometry * geometry)
$method=|void|setGeometry|QSGGeometry *

#pragma ENDDUMP
