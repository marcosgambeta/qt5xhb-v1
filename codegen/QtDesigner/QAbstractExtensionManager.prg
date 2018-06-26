%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
$virtualMethod=|QObject *|extension|QObject *,const QString &

$prototype=virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
$virtualMethod=|void|registerExtensions|QAbstractExtensionFactory *,const QString &

$prototype=virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
$virtualMethod=|void|unregisterExtensions|QAbstractExtensionFactory *,const QString &

$extraMethods

#pragma ENDDUMP
