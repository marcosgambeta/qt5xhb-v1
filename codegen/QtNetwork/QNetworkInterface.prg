$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addressEntries
   METHOD flags
   METHOD hardwareAddress
   METHOD humanReadableName
   METHOD index
   METHOD isValid
   METHOD name
   METHOD allAddresses
   METHOD allInterfaces
   METHOD interfaceFromIndex
   METHOD interfaceFromName

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
QNetworkInterface ()
*/
$constructor=|new1|

/*
QNetworkInterface ( const QNetworkInterface & other )
*/
$constructor=|new2|const QNetworkInterface &

//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKINTERFACE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    HB_FUNC_EXEC( QNETWORKINTERFACE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QList<QNetworkAddressEntry> addressEntries () const
*/
$method=|QList<QNetworkAddressEntry>|addressEntries|

/*
InterfaceFlags flags () const
*/
$method=|QNetworkInterface::InterfaceFlags|flags|

/*
QString hardwareAddress () const
*/
$method=|QString|hardwareAddress|

/*
QString humanReadableName () const
*/
$method=|QString|humanReadableName|

/*
int index () const
*/
$method=|int|index|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString name () const
*/
$method=|QString|name|

/*
static QList<QHostAddress> allAddresses ()
*/
$staticMethod=|QList<QHostAddress>|allAddresses|

/*
static QList<QNetworkInterface> allInterfaces ()
*/
$staticMethod=|QList<QNetworkInterface>|allInterfaces|

/*
static QNetworkInterface interfaceFromIndex ( int index )
*/
$staticMethod=|QNetworkInterface|interfaceFromIndex|int

/*
static QNetworkInterface interfaceFromName ( const QString & name )
*/
$staticMethod=|QNetworkInterface|interfaceFromName|const QString &

$extraMethods

#pragma ENDDUMP
