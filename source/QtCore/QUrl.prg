/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QUrl

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include <QUrl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUrl>
#endif

#include <QStringList>

/*
QUrl ()
*/
void QUrl_new1 ()
{
  QUrl * o = new QUrl ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUrl ( const QString & url )
*/
void QUrl_new2 ()
{
  QUrl * o = new QUrl ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUrl ( const QUrl & other )
*/
void QUrl_new3 ()
{
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  QUrl * o = new QUrl ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
void QUrl_new4 ()
{
  int par2 = hb_parni(2);
  QUrl * o = new QUrl ( PQSTRING(1),  (QUrl::ParsingMode) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QUrl ()
//[2]QUrl ( const QString & url )
//[3]QUrl ( const QUrl & other )
//[4]QUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrl_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_new2();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrl_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QURL_DELETE )
{
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
}

/*
QString authority () const
*/
HB_FUNC_STATIC( QURL_AUTHORITY )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->authority () ) );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QURL_CLEAR )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QURL_ERRORSTRING )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
}

/*
QString fragment () const
*/
HB_FUNC_STATIC( QURL_FRAGMENT )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->fragment () ) );
  }
}

/*
bool hasFragment () const
*/
HB_FUNC_STATIC( QURL_HASFRAGMENT )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasFragment () );
  }
}

/*
bool hasQuery () const
*/
HB_FUNC_STATIC( QURL_HASQUERY )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasQuery () );
  }
}

/*
QString host () const
*/
HB_FUNC_STATIC( QURL_HOST )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->host () ) );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QURL_ISEMPTY )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
}

/*
bool isLocalFile () const
*/
HB_FUNC_STATIC( QURL_ISLOCALFILE )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isLocalFile () );
  }
}

/*
bool isParentOf ( const QUrl & childUrl ) const
*/
HB_FUNC_STATIC( QURL_ISPARENTOF )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isParentOf ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isRelative () const
*/
HB_FUNC_STATIC( QURL_ISRELATIVE )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isRelative () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QURL_ISVALID )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

/*
QString password () const
*/
HB_FUNC_STATIC( QURL_PASSWORD )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->password () ) );
  }
}

/*
QString path () const
*/
HB_FUNC_STATIC( QURL_PATH )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->path () ) );
  }
}

/*
int port () const
*/
void QUrl_port1 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->port () );
  }
}

/*
int port ( int defaultPort ) const
*/
void QUrl_port2 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->port ( PINT(1) ) );
  }
}

//[1]int port () const
//[2]int port ( int defaultPort ) const

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    QUrl_port1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QUrl_port2();
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
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
      QUrl * ptr = new QUrl( obj->resolved ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString scheme () const
*/
HB_FUNC_STATIC( QURL_SCHEME )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->scheme () ) );
  }
}

/*
void setAuthority ( const QString & authority )
*/
HB_FUNC_STATIC( QURL_SETAUTHORITY )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setAuthority ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFragment ( const QString & fragment )
*/
HB_FUNC_STATIC( QURL_SETFRAGMENT )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFragment ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHost ( const QString & host )
*/
HB_FUNC_STATIC( QURL_SETHOST )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setHost ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QURL_SETPASSWORD )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setPassword ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QURL_SETPATH )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString  * par1 = (QString  *) _qt5xhb_itemGetPtr(1);
      obj->setPath ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPort ( int port )
*/
HB_FUNC_STATIC( QURL_SETPORT )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPort ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QURL_SETSCHEME )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setScheme ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QString & url )
*/
void QUrl_setUrl1 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUrl ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
void QUrl_setUrl2 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setUrl ( PQSTRING(1),  (QUrl::ParsingMode) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setUrl ( const QString & url )
//[2]void setUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_setUrl1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_setUrl2();
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
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setUserInfo ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUserName ( const QString & userName )
*/
HB_FUNC_STATIC( QURL_SETUSERNAME )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setUserName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swap ( QUrl & other )
*/
HB_FUNC_STATIC( QURL_SWAP )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
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
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOENCODED )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QUrl::None : hb_parni(1);
      QByteArray * ptr = new QByteArray( obj->toEncoded (  (QUrl::FormattingOptions) par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toLocalFile () const
*/
HB_FUNC_STATIC( QURL_TOLOCALFILE )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->toLocalFile () ) );
  }
}

/*
QString toString ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOSTRING )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QUrl::None : hb_parni(1);
      hb_retc( RQSTRING( obj->toString (  (QUrl::FormattingOptions) par1 ) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString topLevelDomain () const
*/
HB_FUNC_STATIC( QURL_TOPLEVELDOMAIN )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->topLevelDomain () ) );
  }
}

/*
QString userInfo () const
*/
HB_FUNC_STATIC( QURL_USERINFO )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->userInfo () ) );
  }
}

/*
QString userName () const
*/
HB_FUNC_STATIC( QURL_USERNAME )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->userName () ) );
  }
}

/*
static QString fromAce ( const QByteArray & domain )
*/
HB_FUNC_STATIC( QURL_FROMACE )
{
  if( ISQBYTEARRAY(1) )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    hb_retc( RQSTRING( QUrl::fromAce ( *par1 ) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl fromEncoded ( const QByteArray & input )
*/
void QUrl_fromEncoded1 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}

/*
static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
void QUrl_fromEncoded2 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *par1,  (QUrl::ParsingMode) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}

//[1]QUrl fromEncoded ( const QByteArray & input )
//[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_fromEncoded1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_fromEncoded2();
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
  if( ISCHAR(1) )
  {
    QUrl * ptr = new QUrl( QUrl::fromLocalFile ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString fromPercentEncoding ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMPERCENTENCODING )
{
  if( ISQBYTEARRAY(1) )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    hb_retc( RQSTRING( QUrl::fromPercentEncoding ( *par1 ) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl fromUserInput ( const QString & userInput )
*/
HB_FUNC_STATIC( QURL_FROMUSERINPUT )
{
  if( ISCHAR(1) )
  {
    QUrl * ptr = new QUrl( QUrl::fromUserInput ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setIdnWhitelist ( const QStringList & list )
*/
HB_FUNC_STATIC( QURL_SETIDNWHITELIST )
{
  if( ISARRAY(1) )
  {
    QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
    //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
    //int i1;
    //int nLen1 = hb_arrayLen(aStrings1);
    //for (i1=0;i1<nLen1;i1++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
    //  par1 << temp;
    //}
    QUrl::setIdnWhitelist ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray toAce ( const QString & domain )
*/
HB_FUNC_STATIC( QURL_TOACE )
{
  if( ISCHAR(1) )
  {
    QByteArray * ptr = new QByteArray( QUrl::toAce ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
HB_FUNC_STATIC( QURL_TOPERCENTENCODING )
{
  if( ISCHAR(1) && ISOPTQBYTEARRAY(2) && ISOPTQBYTEARRAY(3) )
  {
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(3);
    QByteArray * ptr = new QByteArray( QUrl::toPercentEncoding ( PQSTRING(1), par2, par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_NEWFROMPOINTER )
{
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
