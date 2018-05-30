%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptValue>

$deleteMethod

$prototype=QScriptValue setupPackage(const QString & key, QScriptEngine * engine) const
$method=|QScriptValue|setupPackage|const QString &,QScriptEngine *

$prototype=virtual void initialize(const QString & key, QScriptEngine * engine) = 0
$virtualMethod=|void|initialize|const QString &,QScriptEngine *

$prototype=virtual QStringList keys() const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
