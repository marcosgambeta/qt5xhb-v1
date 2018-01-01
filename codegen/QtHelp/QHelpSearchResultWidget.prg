%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpSearchResultWidget INHERIT QWidget

   METHOD delete
   METHOD linkAt

   METHOD onRequestShowLink

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QUrl linkAt ( const QPoint & point )
$method=|QUrl|linkAt|const QPoint &

#pragma ENDDUMP
