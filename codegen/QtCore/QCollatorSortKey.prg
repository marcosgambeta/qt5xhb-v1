%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete
   METHOD swap
   METHOD compare

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
