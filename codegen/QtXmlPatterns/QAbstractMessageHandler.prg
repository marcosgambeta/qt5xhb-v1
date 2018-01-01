%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
$method=|void|message|QtMsgType,const QString &,const QUrl &=QUrl(),const QSourceLocation &=QSourceLocation()

#pragma ENDDUMP
