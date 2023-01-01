/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

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

PROCEDURE destroyObject() CLASS QUrlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QUrlQuery>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QUrlQuery>
#endif

#include <QtCore/QStringList>

HB_FUNC_STATIC( QURLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QUrlQuery()
    */
    QUrlQuery * obj = new QUrlQuery();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    /*
    QUrlQuery( const QUrl & url )
    */
    QUrlQuery * obj = new QUrlQuery( *PQURL(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QUrlQuery( const QString & queryString )
    */
    QUrlQuery * obj = new QUrlQuery( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQURLQUERY(1) )
  {
    /*
    QUrlQuery( const QUrlQuery & other )
    */
    QUrlQuery * obj = new QUrlQuery( *PQURLQUERY(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QURLQUERY_DELETE )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addQueryItem( const QString & key, const QString & value )
*/
HB_FUNC_STATIC( QURLQUERY_ADDQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      obj->addQueryItem( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStringList allQueryItemValues( const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const
*/
HB_FUNC_STATIC( QURLQUERY_ALLQUERYITEMVALUES )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      RQSTRINGLIST( obj->allQueryItemValues( PQSTRING(1), HB_ISNIL(2)? (QUrl::ComponentFormattingOptions) QUrl::PrettyDecoded : (QUrl::ComponentFormattingOptions) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QURLQUERY_CLEAR )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool hasQueryItem( const QString & key ) const
*/
HB_FUNC_STATIC( QURLQUERY_HASQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasQueryItem( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QURLQUERY_ISEMPTY )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString query( QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const
*/
HB_FUNC_STATIC( QURLQUERY_QUERY )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      RQSTRING( obj->query( HB_ISNIL(1)? (QUrl::ComponentFormattingOptions) QUrl::PrettyDecoded : (QUrl::ComponentFormattingOptions) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString queryItemValue( const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYITEMVALUE )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      RQSTRING( obj->queryItemValue( PQSTRING(1), HB_ISNIL(2)? (QUrl::ComponentFormattingOptions) QUrl::PrettyDecoded : (QUrl::ComponentFormattingOptions) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QChar queryPairDelimiter() const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYPAIRDELIMITER )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QChar * ptr = new QChar( obj->queryPairDelimiter() );
      Qt5xHb::createReturnClass(ptr, "QCHAR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QChar queryValueDelimiter() const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYVALUEDELIMITER )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QChar * ptr = new QChar( obj->queryValueDelimiter() );
      Qt5xHb::createReturnClass(ptr, "QCHAR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void removeAllQueryItems( const QString & key )
*/
HB_FUNC_STATIC( QURLQUERY_REMOVEALLQUERYITEMS )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->removeAllQueryItems( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeQueryItem( const QString & key )
*/
HB_FUNC_STATIC( QURLQUERY_REMOVEQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->removeQueryItem( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setQuery( const QString & queryString )
*/
HB_FUNC_STATIC( QURLQUERY_SETQUERY )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setQuery( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void swap( QUrlQuery & other )
*/
HB_FUNC_STATIC( QURLQUERY_SWAP )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURLQUERY(1) )
    {
#endif
      obj->swap( *PQURLQUERY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString toString( QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded ) const
*/
HB_FUNC_STATIC( QURLQUERY_TOSTRING )
{
  QUrlQuery * obj = (QUrlQuery *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      RQSTRING( obj->toString( HB_ISNIL(1)? (QUrl::ComponentFormattingOptions) QUrl::PrettyDecoded : (QUrl::ComponentFormattingOptions) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
static QChar defaultQueryPairDelimiter()
*/
HB_FUNC_STATIC( QURLQUERY_DEFAULTQUERYPAIRDELIMITER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QChar * ptr = new QChar( QUrlQuery::defaultQueryPairDelimiter() );
    Qt5xHb::createReturnClass(ptr, "QCHAR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QChar defaultQueryValueDelimiter()
*/
HB_FUNC_STATIC( QURLQUERY_DEFAULTQUERYVALUEDELIMITER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QChar * ptr = new QChar( QUrlQuery::defaultQueryValueDelimiter() );
    Qt5xHb::createReturnClass(ptr, "QCHAR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QURLQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
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
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QURLQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
