%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD columnNumber
   METHOD lineNumber

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int columnNumber () const = 0
$virtualMethod=|int|columnNumber|

$prototype=virtual int lineNumber () const = 0
$virtualMethod=|int|lineNumber|

$extraMethods

#pragma ENDDUMP
