%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool nativeEventFilter(const QByteArray & eventType, void * message, long * result) = 0
$virtualMethod=|bool|nativeEventFilter|const QByteArray &,void *,long *

#pragma ENDDUMP
