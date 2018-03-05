%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
REQUEST QHELPSEARCHQUERYWIDGET
REQUEST QHELPSEARCHRESULTWIDGET
#endif

CLASS QHelpSearchEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD hitCount
   METHOD query
   METHOD queryWidget
   METHOD resultWidget
   METHOD cancelIndexing
   METHOD cancelSearching
   METHOD reindexDocumentation
   METHOD search

   METHOD onIndexingFinished
   METHOD onIndexingStarted
   METHOD onSearchingFinished
   METHOD onSearchingStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QHelpSearchQueryWidget>
#include <QHelpSearchResultWidget>

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

$connectSignalFunction

$signalMethod=|indexingFinished()
$signalMethod=|indexingStarted()
$signalMethod=|searchingFinished(int)
$signalMethod=|searchingStarted()

#pragma ENDDUMP
