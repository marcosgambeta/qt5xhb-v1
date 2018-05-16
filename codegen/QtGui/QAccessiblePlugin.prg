%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

$beginClassFrom=QObject

   METHOD delete
   METHOD create

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAccessibleInterface *create(const QString &key, QObject *object) = 0
$virtualMethod=|QAccessibleInterface *|create|const QString &,QObject *

#pragma ENDDUMP
