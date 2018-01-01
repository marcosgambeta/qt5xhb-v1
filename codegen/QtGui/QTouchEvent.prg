%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QOBJECT
REQUEST QTOUCHDEVICE
#endif

CLASS QTouchEvent INHERIT QInputEvent

   METHOD delete
   METHOD window
   METHOD target
   METHOD touchPointStates
   METHOD device

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QList>

$deleteMethod

$prototype=QWindow *window() const
$method=|QWindow *|window|

$prototype=QObject *target() const
$method=|QObject *|target|

$prototype=Qt::TouchPointStates touchPointStates() const
$method=|Qt::TouchPointStates|touchPointStates|

$prototype=QTouchDevice *device() const
$method=|QTouchDevice *|device|

#pragma ENDDUMP
