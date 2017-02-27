/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkAddressEntry

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkAddressEntry
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD broadcast
   METHOD ip
   METHOD netmask
   METHOD prefixLength
   METHOD setBroadcast
   METHOD setIp
   METHOD setNetmask
   METHOD setPrefixLength
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkAddressEntry
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNetworkAddressEntry>
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
#include <QNetworkAddressEntry>
#endif
#endif

/*
QNetworkAddressEntry ()
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkAddressEntry * o = new QNetworkAddressEntry (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkAddressEntry *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkAddressEntry * par1 = (QNetworkAddressEntry *) _qtxhb_itemGetPtr(1);
  QNetworkAddressEntry * o = new QNetworkAddressEntry ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkAddressEntry *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QNetworkAddressEntry ()
//[2]QNetworkAddressEntry ( const QNetworkAddressEntry & other )

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKADDRESSENTRY(1) )
  {
    HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QHostAddress broadcast () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_BROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->broadcast (  ) );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress ip () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_IP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->ip (  ) );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress netmask () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->netmask (  ) );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
int prefixLength () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_PREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->prefixLength (  ) );
  }
}


/*
void setBroadcast ( const QHostAddress & newBroadcast )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETBROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qtxhb_itemGetPtr(1);
    obj->setBroadcast ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIp ( const QHostAddress & newIp )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETIP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qtxhb_itemGetPtr(1);
    obj->setIp ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetmask ( const QHostAddress & newNetmask )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETNETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qtxhb_itemGetPtr(1);
    obj->setNetmask ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefixLength ( int length )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETPREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPrefixLength ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETSELFDESTRUCTION )
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