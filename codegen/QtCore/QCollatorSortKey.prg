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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCollatorSortKey(const QCollatorSortKey &other)
$constructor=|new|const QCollatorSortKey &

$deleteMethod

$prototype=void swap(QCollatorSortKey &other)
$method=|void|swap|QCollatorSortKey &

$prototype=int compare(const QCollatorSortKey &key) const
$method=|int|compare|const QCollatorSortKey &

$extraMethods

#pragma ENDDUMP
