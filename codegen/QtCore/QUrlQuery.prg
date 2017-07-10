$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QUrlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addQueryItem
   METHOD allQueryItemValues
   METHOD clear
   METHOD hasQueryItem
   METHOD isEmpty
   METHOD query
   METHOD queryItemValue
   METHOD queryPairDelimiter
   METHOD queryValueDelimiter
   METHOD removeAllQueryItems
   METHOD removeQueryItem
   METHOD setQuery
   METHOD swap
   METHOD toString
   METHOD defaultQueryPairDelimiter
   METHOD defaultQueryValueDelimiter

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QUrlQuery()
*/
void QUrlQuery_new1 ()
{
  QUrlQuery * o = new QUrlQuery ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QUrlQuery(const QUrl & url)
*/
void QUrlQuery_new2 ()
{
  QUrlQuery * o = new QUrlQuery ( *PQURL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QUrlQuery(const QString & queryString)
*/
void QUrlQuery_new3 ()
{
  QUrlQuery * o = new QUrlQuery ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QUrlQuery(const QUrlQuery & other)
*/
void QUrlQuery_new4 ()
{
  QUrlQuery * o = new QUrlQuery ( *PQURLQUERY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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

/*
void addQueryItem(const QString & key, const QString & value)
*/
$method=|void|addQueryItem|const QString &,const QString &

/*
QStringList allQueryItemValues(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
$method=|QStringList|allQueryItemValues|const QString &,QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

/*
void clear()
*/
$method=|void|clear|

/*
bool hasQueryItem(const QString & key) const
*/
$method=|bool|hasQueryItem|const QString &

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
QString query(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
$method=|QString|query|QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

/*
QString queryItemValue(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
$method=|QString|queryItemValue|const QString &,QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

/*
QChar queryPairDelimiter() const
*/
$method=|QChar|queryPairDelimiter|

/*
QChar queryValueDelimiter() const
*/
$method=|QChar|queryValueDelimiter|

/*
void removeAllQueryItems(const QString & key)
*/
$method=|void|removeAllQueryItems|const QString &

/*
void removeQueryItem(const QString & key)
*/
$method=|void|removeQueryItem|const QString &

/*
void setQuery(const QString & queryString)
*/
$method=|void|setQuery|const QString &

/*
void swap(QUrlQuery & other)
*/
$method=|void|swap|QUrlQuery &

/*
QString toString(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
$method=|QString|toString|QUrl::ComponentFormattingOptions=QUrl::PrettyDecoded

/*
static QChar defaultQueryPairDelimiter()
*/
$staticMethod=|QChar|defaultQueryPairDelimiter|

/*
static QChar defaultQueryValueDelimiter()
*/
$staticMethod=|QChar|defaultQueryValueDelimiter|

$extraMethods

#pragma ENDDUMP
