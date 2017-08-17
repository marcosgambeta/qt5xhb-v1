$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q_IPV6ADDR
#endif

CLASS QHostAddress

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

/*
QHostAddress ()
*/
$constructor=|new1|

/*
QHostAddress ( quint32 ip4Addr )
*/
$constructor=|new2|quint32

/*
QHostAddress ( quint8 * ip6Addr )
*/
$constructor=|new3|quint8 *

/*
QHostAddress ( const Q_IPV6ADDR & ip6Addr )
*/
$constructor=|new4|const Q_IPV6ADDR &

/*
QHostAddress ( const sockaddr * sockaddr )
*/
$constructor=|new5|const sockaddr *

/*
QHostAddress ( const QString & address )
*/
$constructor=|new6|const QString &

/*
QHostAddress ( const QHostAddress & address )
*/
$constructor=|new7|const QHostAddress &

/*
QHostAddress ( SpecialAddress address )
*/
$constructor=|new8|QHostAddress::SpecialAddress

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

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
*/
$method=|bool|isInSubnet,isInSubnet1|const QHostAddress &,int

/*
bool isInSubnet ( const QPair<QHostAddress, int> & subnet ) const
*/
$method=|bool|isInSubnet,isInSubnet2|const QPair<QHostAddress, int> &

%%//HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET2 )
%%//{
%%//  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
%%//  if( obj )
%%//  {
%%//    const QPair<QHostAddress, int>  * par2 = (QPair<QHostAddress, int> *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
%%//    bool b = obj->isInSubnet ( *par2 );
%%//    RBOOL( b );
%%//  }
%%//}

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
$method=|bool|isNull|

/*
QAbstractSocket::NetworkLayerProtocol protocol () const
*/
$method=|QAbstractSocket::NetworkLayerProtocol|protocol|

/*
QString scopeId () const
*/
$method=|QString|scopeId|

/*
void setAddress ( quint32 ip4Addr )
*/
$method=|void|setAddress,setAddress1|quint32

/*
void setAddress ( quint8 * ip6Addr )
*/
$method=|void|setAddress,setAddress2|quint8 *

/*
void setAddress ( const Q_IPV6ADDR & ip6Addr )
*/
$method=|void|setAddress,setAddress3|const Q_IPV6ADDR &

/*
bool setAddress ( const QString & address )
*/
$method=|bool|setAddress,setAddress4|const QString &

/*
void setAddress ( const sockaddr * sockaddr )
*/
$method=|void|setAddress,setAddress5|const sockaddr *

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
$method=|void|setScopeId|const QString &

/*
quint32 toIPv4Address () const
*/
$method=|quint32|toIPv4Address|

/*
Q_IPV6ADDR toIPv6Address () const
*/
$method=|Q_IPV6ADDR|toIPv6Address|

/*
QString toString () const
*/
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
