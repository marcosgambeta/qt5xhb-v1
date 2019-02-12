%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QStyle>

$deleteMethod

$prototype=static QStyle * create(const QString & key)
$staticMethod=|QStyle *|create|const QString &

$prototype=static QStringList keys()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP
