/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QNetworkProxy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD capabilities
   METHOD hostName
   METHOD isCachingProxy
   METHOD isTransparentProxy
   METHOD password
   METHOD port
   METHOD setCapabilities
   METHOD setHostName
   METHOD setPassword
   METHOD setPort
   METHOD setType
   METHOD setUser
   METHOD type
   METHOD user
   METHOD applicationProxy
   METHOD setApplicationProxy

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkProxy>
#endif

/*
QNetworkProxy ()
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW1 )
{
  QNetworkProxy * o = new QNetworkProxy ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW2 )
{
  int par1 = hb_parni(1);
  quint16 par3 = ISNIL(3)? 0 : hb_parni(3);
  QNetworkProxy * o = new QNetworkProxy (  (QNetworkProxy::ProxyType) par1, OPQSTRING(2,QString()), par3, OPQSTRING(4,QString()), OPQSTRING(5,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxy ( const QNetworkProxy & other )
*/
HB_FUNC_STATIC( QNETWORKPROXY_NEW3 )
{
  QNetworkProxy * par1 = (QNetworkProxy *) _qt5xhb_itemGetPtr(1);
  QNetworkProxy * o = new QNetworkProxy ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QNetworkProxy ()
//[2]QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
//[3]QNetworkProxy ( const QNetworkProxy & other )

HB_FUNC_STATIC( QNETWORKPROXY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKPROXY_NEW1 );
  }
  else if( ISBETWEEN(1,5) && ISNUM(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTCHAR(4) && ISOPTCHAR(5) )
  {
    HB_FUNC_EXEC( QNETWORKPROXY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
  {
    HB_FUNC_EXEC( QNETWORKPROXY_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKPROXY_DELETE )
{
  QNetworkProxy * obj = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Capabilities capabilities () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_CAPABILITIES )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capabilities () );
  }
}


/*
QString hostName () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_HOSTNAME )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->hostName () ) );
  }
}


/*
bool isCachingProxy () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_ISCACHINGPROXY )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCachingProxy () );
  }
}


/*
bool isTransparentProxy () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_ISTRANSPARENTPROXY )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTransparentProxy () );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_PASSWORD )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->password () ) );
  }
}


/*
quint16 port () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_PORT )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->port () );
  }
}


/*
void setCapabilities ( Capabilities capabilities )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETCAPABILITIES )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapabilities (  (QNetworkProxy::Capabilities) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHostName ( const QString & hostName )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETHOSTNAME )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHostName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETPASSWORD )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPassword ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPort ( quint16 port )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETPORT )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPort ( (quint16) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( QNetworkProxy::ProxyType type )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETTYPE )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QNetworkProxy::ProxyType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUser ( const QString & user )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETUSER )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUser ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QNetworkProxy::ProxyType type () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_TYPE )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
QString user () const
*/
HB_FUNC_STATIC( QNETWORKPROXY_USER )
{
  QNetworkProxy * obj = (QNetworkProxy *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->user () ) );
  }
}


/*
static QNetworkProxy applicationProxy ()
*/
HB_FUNC_STATIC( QNETWORKPROXY_APPLICATIONPROXY )
{
  QNetworkProxy * ptr = new QNetworkProxy( QNetworkProxy::applicationProxy () );
  _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
}


/*
static void setApplicationProxy ( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QNETWORKPROXY_SETAPPLICATIONPROXY )
{
  QNetworkProxy * par1 = (QNetworkProxy *) _qt5xhb_itemGetPtr(1);
  QNetworkProxy::setApplicationProxy ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QNETWORKPROXY_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKPROXY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKPROXY_SETSELFDESTRUCTION )
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