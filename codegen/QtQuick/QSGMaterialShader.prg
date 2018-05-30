%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD delete
   METHOD activate
   METHOD deactivate
   METHOD program

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void activate()
$virtualMethod=|void|activate|

$prototype=virtual void deactivate()
$virtualMethod=|void|deactivate|

$prototype=QOpenGLShaderProgram * program()
$method=|QOpenGLShaderProgram *|program|

$extraMethods

#pragma ENDDUMP
