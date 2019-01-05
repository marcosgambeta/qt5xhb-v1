%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAxBindable ()
$constructor=|new|

$deleteMethod

$prototype=virtual QAxAggregated * createAggregate ()
$virtualMethod=|QAxAggregated *|createAggregate|

$prototype=virtual bool readData ( QIODevice * source, const QString & format )
$virtualMethod=|bool|readData|QIODevice *,const QString &

$prototype=void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
$method=|void|reportError|int,const QString &,const QString &,const QString &=QString()

$prototype=virtual bool writeData ( QIODevice * sink )
$virtualMethod=|bool|writeData|QIODevice *

$extraMethods

#pragma ENDDUMP
