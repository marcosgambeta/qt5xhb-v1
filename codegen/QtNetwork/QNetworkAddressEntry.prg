$header

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

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkAddressEntry ()
$constructor=|new1|

$prototype=QNetworkAddressEntry ( const QNetworkAddressEntry & other )
$constructor=|new2|const QNetworkAddressEntry &

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

$deleteMethod

$prototype=QHostAddress broadcast () const
$method=|QHostAddress|broadcast|

$prototype=QHostAddress ip () const
$method=|QHostAddress|ip|

$prototype=QHostAddress netmask () const
$method=|QHostAddress|netmask|

$prototype=int prefixLength () const
$method=|int|prefixLength|

$prototype=void setBroadcast ( const QHostAddress & newBroadcast )
$method=|void|setBroadcast|const QHostAddress &

$prototype=void setIp ( const QHostAddress & newIp )
$method=|void|setIp|const QHostAddress &

$prototype=void setNetmask ( const QHostAddress & newNetmask )
$method=|void|setNetmask|const QHostAddress &

$prototype=void setPrefixLength ( int length )
$method=|void|setPrefixLength|int

$extraMethods

#pragma ENDDUMP
