/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QUrl

   DATA pointer
   DATA class_id INIT Class_Id_QUrl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD authority
   METHOD clear
   METHOD errorString
   METHOD fragment
   METHOD hasFragment
   METHOD hasQuery
   METHOD host
   METHOD isEmpty
   METHOD isLocalFile
   METHOD isParentOf
   METHOD isRelative
   METHOD isValid
   METHOD password
   METHOD path
   METHOD port1
   METHOD port2
   METHOD port
   METHOD resolved
   METHOD scheme
   METHOD setAuthority
   METHOD setFragment
   METHOD setHost
   METHOD setPassword
   METHOD setPath
   METHOD setPort
   METHOD setScheme
   METHOD setUrl1
   METHOD setUrl2
   METHOD setUrl
   METHOD setUserInfo
   METHOD setUserName
   METHOD swap
   METHOD toEncoded
   METHOD toLocalFile
   METHOD toString
   METHOD topLevelDomain
   METHOD userInfo
   METHOD userName
   METHOD fromAce
   METHOD fromEncoded1
   METHOD fromEncoded2
   METHOD fromEncoded
   METHOD fromLocalFile
   METHOD fromPercentEncoding
   METHOD fromUserInput
   METHOD setIdnWhitelist
   METHOD toAce
   METHOD toPercentEncoding
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUrl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QUrl>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QUrl>
#endif
#endif

#include <QStringList>

/*
QUrl ()
*/
HB_FUNC_STATIC( QURL_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * o = new QUrl (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QUrl ( const QString & url )
*/
HB_FUNC_STATIC( QURL_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QUrl * o = new QUrl ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QUrl ( const QUrl & other )
*/
HB_FUNC_STATIC( QURL_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
  QUrl * o = new QUrl ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  QUrl * o = new QUrl ( par1,  (QUrl::ParsingMode) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QUrl ()
//[2]QUrl ( const QString & url )
//[3]QUrl ( const QUrl & other )
//[4]QUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURL_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QURL_NEW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QURL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString authority () const
*/
HB_FUNC_STATIC( QURL_AUTHORITY )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->authority (  ).toLatin1().data() );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QURL_CLEAR )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}










/*
QString errorString () const
*/
HB_FUNC_STATIC( QURL_ERRORSTRING )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QString fragment () const
*/
HB_FUNC_STATIC( QURL_FRAGMENT )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fragment (  ).toLatin1().data() );
  }
}



/*
bool hasFragment () const
*/
HB_FUNC_STATIC( QURL_HASFRAGMENT )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasFragment (  ) );
  }
}


/*
bool hasQuery () const
*/
HB_FUNC_STATIC( QURL_HASQUERY )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasQuery (  ) );
  }
}



/*
QString host () const
*/
HB_FUNC_STATIC( QURL_HOST )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->host (  ).toLatin1().data() );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QURL_ISEMPTY )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isLocalFile () const
*/
HB_FUNC_STATIC( QURL_ISLOCALFILE )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLocalFile (  ) );
  }
}


/*
bool isParentOf ( const QUrl & childUrl ) const
*/
HB_FUNC_STATIC( QURL_ISPARENTOF )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isParentOf ( *par1 ) );
  }
}


/*
bool isRelative () const
*/
HB_FUNC_STATIC( QURL_ISRELATIVE )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRelative (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QURL_ISVALID )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QURL_PASSWORD )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->password (  ).toLatin1().data() );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QURL_PATH )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}


/*
int port () const
*/
HB_FUNC_STATIC( QURL_PORT1 )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->port (  ) );
  }
}

/*
int port ( int defaultPort ) const
*/
HB_FUNC_STATIC( QURL_PORT2 )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->port ( (int) hb_parni(1) ) );
  }
}


//[1]int port () const
//[2]int port ( int defaultPort ) const

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURL_PORT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QURL_PORT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}









/*
QUrl resolved ( const QUrl & relative ) const
*/
HB_FUNC_STATIC( QURL_RESOLVED )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->resolved ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QString scheme () const
*/
HB_FUNC_STATIC( QURL_SCHEME )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->scheme (  ).toLatin1().data() );
  }
}


/*
void setAuthority ( const QString & authority )
*/
HB_FUNC_STATIC( QURL_SETAUTHORITY )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAuthority ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}












/*
void setFragment ( const QString & fragment )
*/
HB_FUNC_STATIC( QURL_SETFRAGMENT )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFragment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHost ( const QString & host )
*/
HB_FUNC_STATIC( QURL_SETHOST )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setHost ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QURL_SETPASSWORD )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPassword ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QURL_SETPATH )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString  * par1 = (QString  *) _qtxhb_itemGetPtr(1);
    obj->setPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPort ( int port )
*/
HB_FUNC_STATIC( QURL_SETPORT )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPort ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void setScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QURL_SETSCHEME )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setScheme ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QString & url )
*/
HB_FUNC_STATIC( QURL_SETURL1 )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setUrl ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_SETURL2 )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = hb_parni(2);
    obj->setUrl ( par1,  (QUrl::ParsingMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setUrl ( const QString & url )
//[2]void setUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURL_SETURL1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_SETURL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUserInfo ( const QString & userInfo )
*/
HB_FUNC_STATIC( QURL_SETUSERINFO )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setUserInfo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUserName ( const QString & userName )
*/
HB_FUNC_STATIC( QURL_SETUSERNAME )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setUserName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void swap ( QUrl & other )
*/
HB_FUNC_STATIC( QURL_SWAP )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOENCODED )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QUrl::None : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->toEncoded (  (QUrl::FormattingOptions) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toLocalFile () const
*/
HB_FUNC_STATIC( QURL_TOLOCALFILE )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toLocalFile (  ).toLatin1().data() );
  }
}


/*
QString toString ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOSTRING )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QUrl::None : hb_parni(1);
    hb_retc( (const char *) obj->toString (  (QUrl::FormattingOptions) par1 ).toLatin1().data() );
  }
}


/*
QString topLevelDomain () const
*/
HB_FUNC_STATIC( QURL_TOPLEVELDOMAIN )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->topLevelDomain (  ).toLatin1().data() );
  }
}


/*
QString userInfo () const
*/
HB_FUNC_STATIC( QURL_USERINFO )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->userInfo (  ).toLatin1().data() );
  }
}


/*
QString userName () const
*/
HB_FUNC_STATIC( QURL_USERNAME )
{
  QUrl * obj = (QUrl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->userName (  ).toLatin1().data() );
  }
}


/*
static QString fromAce ( const QByteArray & domain )
*/
HB_FUNC_STATIC( QURL_FROMACE )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  hb_retc( (const char *) QUrl::fromAce ( *par1 ).toLatin1().data() );
}


/*
static QUrl fromEncoded ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMENCODED1 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}

/*
static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_FROMENCODED2 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *par1,  (QUrl::ParsingMode) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


//[1]QUrl fromEncoded ( const QByteArray & input )
//[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QURL_FROMENCODED1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_FROMENCODED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl fromLocalFile ( const QString & localFile )
*/
HB_FUNC_STATIC( QURL_FROMLOCALFILE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QUrl * ptr = new QUrl( QUrl::fromLocalFile ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
static QString fromPercentEncoding ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMPERCENTENCODING )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  hb_retc( (const char *) QUrl::fromPercentEncoding ( *par1 ).toLatin1().data() );
}


/*
static QUrl fromUserInput ( const QString & userInput )
*/
HB_FUNC_STATIC( QURL_FROMUSERINPUT )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QUrl * ptr = new QUrl( QUrl::fromUserInput ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}



/*
static void setIdnWhitelist ( const QStringList & list )
*/
HB_FUNC_STATIC( QURL_SETIDNWHITELIST )
{
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
  QUrl::setIdnWhitelist ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QByteArray toAce ( const QString & domain )
*/
HB_FUNC_STATIC( QURL_TOACE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray * ptr = new QByteArray( QUrl::toAce ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
HB_FUNC_STATIC( QURL_TOPERCENTENCODING )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(2);
  QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(3);
  QByteArray * ptr = new QByteArray( QUrl::toPercentEncoding ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}



HB_FUNC_STATIC( QURL_NEWFROM )
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

HB_FUNC_STATIC( QURL_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QURL_SETSELFDESTRUCTION )
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