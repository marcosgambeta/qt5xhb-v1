%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
$internalConstructor=5,2,0|new1|const QBluetoothAddress &=QBluetoothAddress()

$prototype=QBluetoothTransferRequest(const QBluetoothTransferRequest &other)
$internalConstructor=5,2,0|new2|const QBluetoothTransferRequest &

//[1]QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
//[2]QBluetoothTransferRequest(const QBluetoothTransferRequest &other)

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) )
  {
    QBluetoothTransferRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHTRANSFERREQUEST(1) )
  {
    QBluetoothTransferRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=QVariant attribute(Attribute code, const QVariant &defaultValue = QVariant()) const
$method=5,2,0|QVariant|attribute|QBluetoothTransferRequest::Attribute,const QVariant &=QVariant()

$prototype=void setAttribute(Attribute code, const QVariant &value)
$method=5,2,0|void|setAttribute|QBluetoothTransferRequest::Attribute,const QVariant &

$prototype=QBluetoothAddress address() const
$method=5,2,0|QBluetoothAddress|address|

$extraMethods

#pragma ENDDUMP
