%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QListView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void activateCurrentItem ()
$method=|void|activateCurrentItem|

$prototype=void filterIndices ( const QString & filter, const QString & wildcard = QString() )
$method=|void|filterIndices|const QString &,const QString &=QString()

$beginSignals
$signal=|linkActivated(QUrl,QString)
$endSignals

#pragma ENDDUMP
