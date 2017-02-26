/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST Q_IPV6ADDR
#endif

CLASS QHostAddress

   DATA pointer
   DATA class_id INIT Class_Id_QHostAddress
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD clear
   METHOD isInSubnet1
   METHOD isInSubnet
   METHOD isNull
   METHOD protocol
   METHOD scopeId
   METHOD setAddress1
   METHOD setAddress4
   METHOD setAddress
   METHOD setScopeId
   METHOD toIPv4Address
   METHOD toIPv6Address
   METHOD toString
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHostAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QHostAddress>
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
#include <QHostAddress>
#endif
#endif

/*
QHostAddress ()
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHostAddress * o = new QHostAddress (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QHostAddress ( quint32 ip4Addr )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  quint32 par1 = hb_parni(1);
  QHostAddress * o = new QHostAddress ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QHostAddress ( const QString & address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QHostAddress * o = new QHostAddress ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QHostAddress ( const QHostAddress & address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHostAddress * par1 = (QHostAddress *) _qtxhb_itemGetPtr(1);
  QHostAddress * o = new QHostAddress ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QHostAddress ( SpecialAddress address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW8 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QHostAddress * o = new QHostAddress (  (QHostAddress::SpecialAddress) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostAddress *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QHostAddress ()
//[2]QHostAddress ( quint32 ip4Addr )
//[3]QHostAddress ( quint8 * ip6Addr )
//[4]QHostAddress ( const Q_IPV6ADDR & ip6Addr )
//[5]QHostAddress ( const sockaddr * sockaddr )
//[6]QHostAddress ( const QString & address )
//[7]QHostAddress ( const QHostAddress & address )
//[8]QHostAddress ( SpecialAddress address )

HB_FUNC_STATIC( QHOSTADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW7 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHOSTADDRESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QHOSTADDRESS_CLEAR )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET1 )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isInSubnet ( *par1, (int) hb_parni(2) ) );
  }
}



//HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET2 )
//{
//  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
//  if( obj )
//  {
//    const QPair<QHostAddress, int>  * par2 = (QPair<QHostAddress, int> *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
//    bool b = obj->isInSubnet ( *par2 );
//    hb_retl( b );
//  }
//}

//[1]bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
//[2]bool isInSubnet ( const QPair<QHostAddress, int> & subnet ) const

HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_ISINSUBNET1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISNULL )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QAbstractSocket::NetworkLayerProtocol protocol () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_PROTOCOL )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->protocol (  ) );
  }
}


/*
QString scopeId () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_SCOPEID )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->scopeId (  ).toLatin1().data() );
  }
}


/*
void setAddress ( quint32 ip4Addr )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS1 )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAddress ( (quint32) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
bool setAddress ( const QString & address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS4 )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->setAddress ( par1 ) );
  }
}



//[1]void setAddress ( quint32 ip4Addr )
//[2]void setAddress ( quint8 * ip6Addr )
//[3]void setAddress ( const Q_IPV6ADDR & ip6Addr )
//[4]bool setAddress ( const QString & address )
//[5]void setAddress ( const sockaddr * sockaddr )

HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_SETADDRESS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_SETADDRESS4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setScopeId ( const QString & id )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETSCOPEID )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setScopeId ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 toIPv4Address () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toIPv4Address (  ) );
  }
}


/*
Q_IPV6ADDR toIPv6Address () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOIPV6ADDRESS )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    Q_IPV6ADDR * ptr = new Q_IPV6ADDR( obj->toIPv6Address (  ) );
    _qt4xhb_createReturnClass ( ptr, "Q_IPV6ADDR" );
  }
}


/*
QString toString () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOSTRING )
{
  QHostAddress * obj = (QHostAddress *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}




HB_FUNC_STATIC( QHOSTADDRESS_NEWFROM )
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

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QHOSTADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QHOSTADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QHOSTADDRESS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QHOSTADDRESS_SETSELFDESTRUCTION )
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