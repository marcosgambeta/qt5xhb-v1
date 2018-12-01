%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHelpSearchQueryWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QList<QHelpSearchQuery> query () const
$method=|QList<QHelpSearchQuery>|query|

$beginSignals
$signal=|search()
$endSignals

#pragma ENDDUMP
