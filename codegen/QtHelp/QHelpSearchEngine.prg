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

$prototype=QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = 0 )
$constructor=|QHelpSearchEngine|QHelpEngineCore *,QObject *=0

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

#pragma ENDDUMP
