/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QUrlQuery

   DATA pointer
   DATA class_id INIT Class_Id_QUrlQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QUrlQuery>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QUrlQuery>
#endif
#endif

#include <QStringList>

/*
QUrlQuery()
*/
HB_FUNC_STATIC( QURLQUERY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrlQuery * o = new QUrlQuery (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QUrlQuery(const QUrl & url)
*/
HB_FUNC_STATIC( QURLQUERY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
  QUrlQuery * o = new QUrlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QUrlQuery(const QString & queryString)
*/
HB_FUNC_STATIC( QURLQUERY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QUrlQuery * o = new QUrlQuery ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QUrlQuery(const QUrlQuery & other)
*/
HB_FUNC_STATIC( QURLQUERY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrlQuery * par1 = (QUrlQuery *) _qtxhb_itemGetPtr(1);
  QUrlQuery * o = new QUrlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QUrlQuery()
//[2]QUrlQuery(const QUrl & url)
//[3]QUrlQuery(const QString & queryString)
//[4]QUrlQuery(const QUrlQuery & other)

HB_FUNC_STATIC( QURLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURLQUERY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QURLQUERY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURLQUERY_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQURLQUERY(1) )
  {
    HB_FUNC_EXEC( QURLQUERY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QURLQUERY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void addQueryItem(const QString & key, const QString & value)
*/
HB_FUNC_STATIC( QURLQUERY_ADDQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->addQueryItem ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList allQueryItemValues(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_ALLQUERYITEMVALUES )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QUrl::PrettyDecoded : hb_parni(2);
    QStringList strl = obj->allQueryItemValues ( par1,  (QUrl::ComponentFormattingOptions) par2 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QURLQUERY_CLEAR )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasQueryItem(const QString & key) const
*/
HB_FUNC_STATIC( QURLQUERY_HASQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasQueryItem ( par1 ) );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QURLQUERY_ISEMPTY )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QString query(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_QUERY )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QUrl::PrettyDecoded : hb_parni(1);
    hb_retc( (const char *) obj->query (  (QUrl::ComponentFormattingOptions) par1 ).toLatin1().data() );
  }
}


/*
QString queryItemValue(const QString & key, QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYITEMVALUE )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QUrl::PrettyDecoded : hb_parni(2);
    hb_retc( (const char *) obj->queryItemValue ( par1,  (QUrl::ComponentFormattingOptions) par2 ).toLatin1().data() );
  }
}



/*
QChar queryPairDelimiter() const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYPAIRDELIMITER )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->queryPairDelimiter (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar queryValueDelimiter() const
*/
HB_FUNC_STATIC( QURLQUERY_QUERYVALUEDELIMITER )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->queryValueDelimiter (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
void removeAllQueryItems(const QString & key)
*/
HB_FUNC_STATIC( QURLQUERY_REMOVEALLQUERYITEMS )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeAllQueryItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeQueryItem(const QString & key)
*/
HB_FUNC_STATIC( QURLQUERY_REMOVEQUERYITEM )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeQueryItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuery(const QString & queryString)
*/
HB_FUNC_STATIC( QURLQUERY_SETQUERY )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setQuery ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void swap(QUrlQuery & other)
*/
HB_FUNC_STATIC( QURLQUERY_SWAP )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrlQuery * par1 = (QUrlQuery *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toString(QUrl::ComponentFormattingOptions encoding = QUrl::PrettyDecoded) const
*/
HB_FUNC_STATIC( QURLQUERY_TOSTRING )
{
  QUrlQuery * obj = (QUrlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QUrl::PrettyDecoded : hb_parni(1);
    hb_retc( (const char *) obj->toString (  (QUrl::ComponentFormattingOptions) par1 ).toLatin1().data() );
  }
}


/*
static QChar defaultQueryPairDelimiter()
*/
HB_FUNC_STATIC( QURLQUERY_DEFAULTQUERYPAIRDELIMITER )
{
  QChar * ptr = new QChar( QUrlQuery::defaultQueryPairDelimiter (  ) );
  _qt4xhb_createReturnClass ( ptr, "QCHAR" );
}


/*
static QChar defaultQueryValueDelimiter()
*/
HB_FUNC_STATIC( QURLQUERY_DEFAULTQUERYVALUEDELIMITER )
{
  QChar * ptr = new QChar( QUrlQuery::defaultQueryValueDelimiter (  ) );
  _qt4xhb_createReturnClass ( ptr, "QCHAR" );
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
