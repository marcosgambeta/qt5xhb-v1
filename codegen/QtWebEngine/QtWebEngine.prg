%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QtWebEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD initialize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

%% $deleteMethod

$prototype=void initialize()
$staticMethod=|void|QtWebEngine::initialize|

#pragma ENDDUMP
