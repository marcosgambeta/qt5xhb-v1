%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QXmlReader

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlSimpleReader ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool parse ( const QXmlInputSource * input, bool incremental )
$virtualMethod=|bool|parse|const QXmlInputSource *,bool

$prototype=virtual bool parseContinue ()
$virtualMethod=|bool|parseContinue|

#pragma ENDDUMP
