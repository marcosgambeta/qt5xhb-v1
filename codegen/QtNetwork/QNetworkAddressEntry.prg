%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% TODO:
%% #ifndef QT_NO_NETWORKINTERFACE
%% #endif

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkAddressEntry ()
$internalConstructor=|new1|

$prototype=QNetworkAddressEntry ( const QNetworkAddressEntry & other )
$internalConstructor=|new2|const QNetworkAddressEntry &

/*
[1]QNetworkAddressEntry ()
[2]QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkAddressEntry_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKADDRESSENTRY(1) )
  {
    QNetworkAddressEntry_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkAddressEntry()
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

$prototype=void swap(QNetworkAddressEntry &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkAddressEntry &

$extraMethods

#pragma ENDDUMP
