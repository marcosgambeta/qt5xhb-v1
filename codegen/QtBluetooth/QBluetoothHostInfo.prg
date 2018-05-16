%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD address
   METHOD setAddress
   METHOD name
   METHOD setName

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothHostInfo()
$internalConstructor=5,2,0|new1|

$prototype=QBluetoothHostInfo(const QBluetoothHostInfo &other)
$internalConstructor=5,2,0|new2|const QBluetoothHostInfo &

//[1]QBluetoothHostInfo()
//[2]QBluetoothHostInfo(const QBluetoothHostInfo &other)

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHHOSTINFO(1) )
  {
    QBluetoothHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=QBluetoothAddress address() const
$method=5,2,0|QBluetoothAddress|address|

$prototype=void setAddress(const QBluetoothAddress &address)
$method=5,2,0|void|setAddress|const QBluetoothAddress &

$prototype=QString name() const
$method=5,2,0|QString|name|

$prototype=void setName(const QString &name)
$method=5,2,0|void|setName|const QString &

$extraMethods

#pragma ENDDUMP
