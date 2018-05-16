%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

$beginClassFrom=QEvent

   METHOD new
   METHOD delete
   METHOD added
   METHOD child
   METHOD polished
   METHOD removed

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QChildEvent(Type type, QObject * child)
$constructor=|new|QEvent::Type,QObject *

$deleteMethod

$prototype=bool added() const
$method=|bool|added|

$prototype=QObject * child() const
$method=|QObject *|child|

$prototype=bool polished() const
$method=|bool|polished|

$prototype=bool removed() const
$method=|bool|removed|

#pragma ENDDUMP
