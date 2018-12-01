%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QStringListModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=void createIndex ( const QString & customFilterName )
$method=|void|createIndex|const QString &

$prototype=QModelIndex filter ( const QString & filter, const QString & wildcard = QString() )
$method=|QModelIndex|filter|const QString &,const QString &=QString()

$prototype=bool isCreatingIndex () const
$method=|bool|isCreatingIndex|

$beginSignals
$signal=|indexCreated()
$signal=|indexCreationStarted()
$endSignals

#pragma ENDDUMP
