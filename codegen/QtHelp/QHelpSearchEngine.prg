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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtHelp/QHelpSearchQueryWidget>
#include <QtHelp/QHelpSearchResultWidget>

$prototype=QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = 0 )
$constructor=|new|QHelpEngineCore *,QObject *=0

$deleteMethod

$prototype=int hitCount () const
$method=|int|hitCount|

$prototype=QList<QHelpSearchQuery> query () const
$method=|QList<QHelpSearchQuery>|query|

$prototype=QHelpSearchQueryWidget * queryWidget ()
$method=|QHelpSearchQueryWidget *|queryWidget|

$prototype=QHelpSearchResultWidget * resultWidget ()
$method=|QHelpSearchResultWidget *|resultWidget|

$prototype=void cancelIndexing ()
$method=|void|cancelIndexing|

$prototype=void cancelSearching ()
$method=|void|cancelSearching|

$prototype=void reindexDocumentation ()
$method=|void|reindexDocumentation|

$prototype=void search ( const QList<QHelpSearchQuery> & queryList )
$method=|void|search|const QList<QHelpSearchQuery> &

$beginSignals
$signal=|indexingFinished()
$signal=|indexingStarted()
$signal=|searchingFinished(int)
$signal=|searchingStarted()
$endSignals

#pragma ENDDUMP
