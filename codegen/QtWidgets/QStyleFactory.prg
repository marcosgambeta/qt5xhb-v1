%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

$beginClass

   METHOD delete
   METHOD create
   METHOD keys

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStyle>

$deleteMethod

$prototype=static QStyle * create(const QString & key)
$staticMethod=|QStyle *|create|const QString &

$prototype=static QStringList keys()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP
