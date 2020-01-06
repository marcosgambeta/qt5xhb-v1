%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

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
