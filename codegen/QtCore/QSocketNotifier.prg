%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSocketNotifier(qintptr socket, Type, QObject *parent = 0)
$constructor=|new|qintptrt,QSocketNotifier::Type,QObject *=0

$deleteMethod

$prototype=qintptr socket() const
$method=|qintptr|socket|

$prototype=Type type() const
$method=|QSocketNotifier::Type|type|

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

#pragma ENDDUMP
