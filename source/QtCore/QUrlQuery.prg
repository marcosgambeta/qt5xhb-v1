/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QUrlQuery

   DATA pointer
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QUrlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUrlQuery>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUrlQuery>
#endif

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
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  QUrlQuery * o = new QUrlQuery ( *par1 );
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
  QUrlQuery * par1 = (QUrlQuery *) _qt5xhb_itemGetPtr(1);
  QUrlQuery * o = new QUrlQuery ( *par1 );
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

HB_FUNC_STATIC( QURLQUERY_DELETE )
{
  QUrlQuery * obj = (QUrlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
      QStringList strl = obj->allQueryItemValues ( PQSTRING(1),  (QUrl::ComponentFormattingOptions) par2 );
      _qt5xhb_convert_qstringlist_to_array ( strl );
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
HB_FUNC_STATIC( QURLQUERY_HASQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retl( obj->hasQueryItem ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QURLQUERY_ISEMPTY )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
}

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
      hb_retc( RQSTRING( obj->query (  (QUrl::ComponentFormattingOptions) par1 ) ) );
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
      hb_retc( RQSTRING( obj->queryItemValue ( PQSTRING(1),  (QUrl::ComponentFormattingOptions) par2 ) ) );
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
HB_FUNC_STATIC( QURLQUERY_REMOVEALLQUERYITEMS )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->removeAllQueryItems ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeQueryItem(const QString & key)
*/
HB_FUNC_STATIC( QURLQUERY_REMOVEQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->removeQueryItem ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery(const QString & queryString)
*/
HB_FUNC_STATIC( QURLQUERY_SETQUERY )
{
  QUrlQuery * obj = (QUrlQuery *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setQuery ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
      hb_retc( RQSTRING( obj->toString (  (QUrl::ComponentFormattingOptions) par1 ) ) );
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

HB_FUNC_STATIC( QURLQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QURLQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QURLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QURLQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QURLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QURLQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QURLQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
