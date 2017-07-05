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
HB_FUNC_STATIC( QURLQUERY_ADDQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      obj->addQueryItem ( PQSTRING(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList allQueryItemValues(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_ALLQUERYITEMVALUES )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QUrl::PrettyDecoded : hb_parni(2);
      RQSTRINGLIST( obj->allQueryItemValues ( PQSTRING(1), (QUrl::ComponentFormattingOptions) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QURLQUERY_CLEAR )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QURLQUERY_QUERY )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QUrl::PrettyDecoded : hb_parni(1);
      RQSTRING( obj->query ( (QUrl::ComponentFormattingOptions) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString queryItemValue(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYITEMVALUE )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QUrl::PrettyDecoded : hb_parni(2);
      RQSTRING( obj->queryItemValue ( PQSTRING(1), (QUrl::ComponentFormattingOptions) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QChar queryPairDelimiter() const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYPAIRDELIMITER )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QChar * ptr = new QChar( obj->queryPairDelimiter () );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

/*
QChar queryValueDelimiter() const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYVALUEDELIMITER )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QChar * ptr = new QChar( obj->queryValueDelimiter () );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

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
HB_FUNC_STATIC( QURLQUERY_SWAP )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURLQUERY(1) )
    {
      QUrlQuery * par1 = (QUrlQuery *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toString(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_TOSTRING )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QUrl::PrettyDecoded : hb_parni(1);
      RQSTRING( obj->toString ( (QUrl::ComponentFormattingOptions) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QChar defaultQueryPairDelimiter()
*/
HB_FUNC_STATIC( QURLQUERY_DEFAULTQUERYPAIRDELIMITER )
{
  QChar * ptr = new QChar( QUrlQuery::defaultQueryPairDelimiter () );
  _qt5xhb_createReturnClass ( ptr, "QCHAR" );
}

/*
static QChar defaultQueryValueDelimiter()
*/
HB_FUNC_STATIC( QURLQUERY_DEFAULTQUERYVALUEDELIMITER )
{
  QChar * ptr = new QChar( QUrlQuery::defaultQueryValueDelimiter () );
  _qt5xhb_createReturnClass ( ptr, "QCHAR" );
}

$extraMethods

#pragma ENDDUMP
