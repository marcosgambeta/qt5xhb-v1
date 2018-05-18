%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

$beginClass

   METHOD delete

   METHOD handle

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QVariant handle () const
$virtualMethod=|QVariant|handle|

$extraMethods

#pragma ENDDUMP
