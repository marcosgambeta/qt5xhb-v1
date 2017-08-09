$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
REQUEST QHELPSEARCHQUERYWIDGET
REQUEST QHELPSEARCHRESULTWIDGET
#endif

CLASS QHelpSearchEngine INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = 0 )
*/
$constructor=|QHelpSearchEngine|QHelpEngineCore *,QObject *=0

$deleteMethod

/*
int hitCount () const
*/
$method=|int|hitCount|

/*
QList<QHelpSearchQuery> query () const
*/
$method=|QList<QHelpSearchQuery>|query|

/*
QHelpSearchQueryWidget * queryWidget ()
*/
$method=|QHelpSearchQueryWidget *|queryWidget|

/*
QHelpSearchResultWidget * resultWidget ()
*/
$method=|QHelpSearchResultWidget *|resultWidget|

/*
void cancelIndexing ()
*/
$method=|void|cancelIndexing|

/*
void cancelSearching ()
*/
$method=|void|cancelSearching|

/*
void reindexDocumentation ()
*/
$method=|void|reindexDocumentation|

/*
void search ( const QList<QHelpSearchQuery> & queryList )
*/
$method=|void|search|const QList<QHelpSearchQuery> &

#pragma ENDDUMP
