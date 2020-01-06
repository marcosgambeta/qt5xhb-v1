%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototype=virtual QUrl resolve ( const QUrl & relative, const QUrl & baseURI ) const = 0
$virtualMethod=|QUrl|resolve|const QUrl &,const QUrl &

#pragma ENDDUMP
