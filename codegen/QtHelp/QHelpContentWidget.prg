%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTreeView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QModelIndex indexOf ( const QUrl & link )
$method=|QModelIndex|indexOf|const QUrl &

$beginSignals
$signal=|linkActivated(QUrl)
$endSignals

#pragma ENDDUMP
