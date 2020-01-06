%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QHelpEngineCore

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtHelp/QHelpContentModel>
#include <QtHelp/QHelpIndexModel>
#include <QtHelp/QHelpSearchEngine>

$prototype=QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
$constructor=|new|const QString &,QObject *=0

$deleteMethod

$prototype=QHelpContentModel * contentModel () const
$method=|QHelpContentModel *|contentModel|

$prototype=QHelpContentWidget * contentWidget ()
$method=|QHelpContentWidget *|contentWidget|

$prototype=QHelpIndexModel * indexModel () const
$method=|QHelpIndexModel *|indexModel|

$prototype=QHelpIndexWidget * indexWidget ()
$method=|QHelpIndexWidget *|indexWidget|

$prototype=QHelpSearchEngine * searchEngine ()
$method=|QHelpSearchEngine *|searchEngine|

#pragma ENDDUMP
