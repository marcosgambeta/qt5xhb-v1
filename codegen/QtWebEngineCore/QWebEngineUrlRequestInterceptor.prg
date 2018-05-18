%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD new
%%   METHOD delete

   METHOD interceptRequest

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWebEngineUrlRequestInterceptor(QObject *p = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

%% $deleteMethod

$prototype=virtual void interceptRequest(QWebEngineUrlRequestInfo &info) = 0
$virtualMethod=|void|interceptRequest|QWebEngineUrlRequestInfo &

#pragma ENDDUMP
