/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkAddressEntry

   DATA pointer
   DATA self_destruction INIT .F.

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
#include <QNetworkAddressEntry>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkAddressEntry>
#endif

/*
QNetworkAddressEntry ()
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW1 )
{
  QNetworkAddressEntry * o = new QNetworkAddressEntry ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW2 )
{
  QNetworkAddressEntry * o = new QNetworkAddressEntry ( *PQNETWORKADDRESSENTRY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
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
}

/*
QHostAddress broadcast () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_BROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->broadcast () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress ip () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_IP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->ip () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress netmask () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->netmask () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
int prefixLength () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_PREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->prefixLength () );
  }
}


/*
void setBroadcast ( const QHostAddress & newBroadcast )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETBROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBroadcast ( *PQHOSTADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIp ( const QHostAddress & newIp )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETIP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIp ( *PQHOSTADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetmask ( const QHostAddress & newNetmask )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETNETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNetmask ( *PQHOSTADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefixLength ( int length )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETPREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPrefixLength ( PINT(1) );
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