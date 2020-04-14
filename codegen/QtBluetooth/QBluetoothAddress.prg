%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothAddress()
$internalConstructor=5,2,0|new1|

$prototype=QBluetoothAddress(quint64 address)
$internalConstructor=5,2,0|new2|quint64

$prototype=QBluetoothAddress(const QString &address)
$internalConstructor=5,2,0|new3|const QString &

$prototype=QBluetoothAddress(const QBluetoothAddress &other)
$internalConstructor=5,2,0|new4|const QBluetoothAddress &

/*
[1]QBluetoothAddress()
[2]QBluetoothAddress(quint64 address)
[3]QBluetoothAddress(const QString &address)
[4]QBluetoothAddress(const QBluetoothAddress &other)
*/

HB_FUNC_STATIC( QBLUETOOTHADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothAddress_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBluetoothAddress_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBluetoothAddress_new3();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
  {
    QBluetoothAddress_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isNull() const
$method=5,2,0|bool|isNull|

$prototype=void clear()
$method=5,2,0|void|clear|

$prototype=quint64 toUInt64() const
$method=5,2,0|quint64|toUInt64|

$prototype=QString toString() const
$method=5,2,0|QString|toString|

$extraMethods

#pragma ENDDUMP
