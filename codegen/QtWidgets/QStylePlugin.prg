%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD create

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStyle>

$deleteMethod

$prototype=virtual QStyle *create(const QString &key) = 0
$virtualMethod=|QStyle *|create|const QString &

#pragma ENDDUMP
