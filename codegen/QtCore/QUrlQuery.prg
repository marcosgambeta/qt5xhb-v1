%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$prototype=QUrlQuery()
$internalConstructor=|new1|

$prototype=QUrlQuery(const QUrl & url)
$internalConstructor=|new2|const QUrl &

$prototype=QUrlQuery(const QString & queryString)
$internalConstructor=|new3|const QString &

$prototype=QUrlQuery(const QUrlQuery & other)
$internalConstructor=|new4|const QUrlQuery &

//[1]QUrlQuery()
//[2]QUrlQuery(const QUrl & url)
//[3]QUrlQuery(const QString & queryString)
//[4]QUrlQuery(const QUrlQuery & other)

HB_FUNC_STATIC( QURLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrlQuery_new1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrlQuery_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrlQuery_new3();
  }
  else if( ISNUMPAR(1) && ISQURLQUERY(1) )
  {
    QUrlQuery_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addQueryItem(const QString & key, const QString & value)
$method=|void|addQueryItem|const QString &,const QString &

$prototype=QStringList allQueryItemValues(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
$method=|QStringList|allQueryItemValues|const QString &,QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

$prototype=void clear()
$method=|void|clear|

$prototype=bool hasQueryItem(const QString & key) const
$method=|bool|hasQueryItem|const QString &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QString query(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
$method=|QString|query|QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

$prototype=QString queryItemValue(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
$method=|QString|queryItemValue|const QString &,QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

$prototype=QChar queryPairDelimiter() const
$method=|QChar|queryPairDelimiter|

$prototype=QChar queryValueDelimiter() const
$method=|QChar|queryValueDelimiter|

$prototype=void removeAllQueryItems(const QString & key)
$method=|void|removeAllQueryItems|const QString &

$prototype=void removeQueryItem(const QString & key)
$method=|void|removeQueryItem|const QString &

$prototype=void setQuery(const QString & queryString)
$method=|void|setQuery|const QString &

$prototype=void swap(QUrlQuery & other)
$method=|void|swap|QUrlQuery &

$prototype=QString toString(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
$method=|QString|toString|QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

$prototype=static QChar defaultQueryPairDelimiter()
$staticMethod=|QChar|defaultQueryPairDelimiter|

$prototype=static QChar defaultQueryValueDelimiter()
$staticMethod=|QChar|defaultQueryValueDelimiter|

$extraMethods

#pragma ENDDUMP
