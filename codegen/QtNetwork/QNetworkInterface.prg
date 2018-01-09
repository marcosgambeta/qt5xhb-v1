%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkInterface

   DATA pointer
   DATA self_destruction INIT .F.

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

$prototype=QNetworkInterface ()
$internalConstructor=|new1|

$prototype=QNetworkInterface ( const QNetworkInterface & other )
$internalConstructor=|new2|const QNetworkInterface &

//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkInterface_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    QNetworkInterface_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QNetworkAddressEntry> addressEntries () const
$method=|QList<QNetworkAddressEntry>|addressEntries|

$prototype=InterfaceFlags flags () const
$method=|QNetworkInterface::InterfaceFlags|flags|

$prototype=QString hardwareAddress () const
$method=|QString|hardwareAddress|

$prototype=QString humanReadableName () const
$method=|QString|humanReadableName|

$prototype=int index () const
$method=|int|index|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=static QList<QHostAddress> allAddresses ()
$staticMethod=|QList<QHostAddress>|allAddresses|

$prototype=static QList<QNetworkInterface> allInterfaces ()
$staticMethod=|QList<QNetworkInterface>|allInterfaces|

$prototype=static QNetworkInterface interfaceFromIndex ( int index )
$staticMethod=|QNetworkInterface|interfaceFromIndex|int

$prototype=static QNetworkInterface interfaceFromName ( const QString & name )
$staticMethod=|QNetworkInterface|interfaceFromName|const QString &

$extraMethods

#pragma ENDDUMP
