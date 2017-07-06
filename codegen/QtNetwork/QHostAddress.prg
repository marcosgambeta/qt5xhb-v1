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
HB_FUNC_STATIC( QHOSTADDRESS_NEW1 )
{
  QHostAddress * o = new QHostAddress ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QHostAddress ( quint32 ip4Addr )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW2 )
{
  QHostAddress * o = new QHostAddress ( PQUINT32(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QHostAddress ( const QString & address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW6 )
{
  QHostAddress * o = new QHostAddress ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QHostAddress ( const QHostAddress & address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW7 )
{
  QHostAddress * o = new QHostAddress ( *PQHOSTADDRESS(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QHostAddress ( SpecialAddress address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW8 )
{
  QHostAddress * o = new QHostAddress ( (QHostAddress::SpecialAddress) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
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

$deleteMethod

/*
void clear ()
*/
HB_FUNC_STATIC( QHOSTADDRESS_CLEAR )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isInSubnet ( const QHostAddress & subnet, int netmask ) const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET1 )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isInSubnet ( *PQHOSTADDRESS(1), PINT(2) ) );
  }
}



//HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET2 )
//{
//  QHostAddress * obj = (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
//  if( obj )
//  {
//    const QPair<QHostAddress, int>  * par2 = (QPair<QHostAddress, int> *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
//    bool b = obj->isInSubnet ( *par2 );
//    RBOOL( b );
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
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QAbstractSocket::NetworkLayerProtocol protocol () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_PROTOCOL )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->protocol () );
  }
}


/*
QString scopeId () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_SCOPEID )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->scopeId () );
  }
}


/*
void setAddress ( quint32 ip4Addr )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS1 )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAddress ( PQUINT32(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
bool setAddress ( const QString & address )
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS4 )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setAddress ( PQSTRING(1) ) );
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
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setScopeId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 toIPv4Address () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->toIPv4Address () );
  }
}


/*
Q_IPV6ADDR toIPv6Address () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOIPV6ADDRESS )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    Q_IPV6ADDR * ptr = new Q_IPV6ADDR( obj->toIPv6Address () );
    _qt5xhb_createReturnClass ( ptr, "Q_IPV6ADDR" );
  }
}


/*
QString toString () const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOSTRING )
{
  QHostAddress * obj = (QHostAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->toString () );
  }
}




$extraMethods

#pragma ENDDUMP
