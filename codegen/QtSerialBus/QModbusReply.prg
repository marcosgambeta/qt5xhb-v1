%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=QModbusReply(ReplyType type, int serverAddress, QObject *parent = nullptr)
$constructor=5,8,0|new|QModbusReply::ReplyType,int,QObject *=nullptr

%% $deleteMethod

$prototype=ReplyType type() const
$method=5,8,0|QModbusReply::ReplyType|type|

$prototype=int serverAddress() const
$method=5,8,0|int|serverAddress|

$prototype=bool isFinished() const
$method=5,8,0|bool|isFinished|

$prototype=QModbusDataUnit result() const
%% TODO: $method=5,8,0|QModbusDataUnit|result|

$prototype=QModbusResponse rawResult() const
%% TODO: $method=5,8,0|QModbusResponse|rawResult|

$prototype=QString errorString() const
$method=5,8,0|QString|errorString|

$prototype=QModbusDevice::Error error() const
$method=5,8,0|QModbusDevice::Error|error|

$prototype=void setResult(const QModbusDataUnit &unit)
%% TODO: $method=5,8,0|void|setResult|const QModbusDataUnit &

$prototype=void setRawResult(const QModbusResponse &unit)
%% TODO: $method=5,8,0|void|setRawResult|const QModbusResponse &

$prototype=void setFinished(bool isFinished)
$method=5,8,0|void|setFinished|bool

$prototype=void setError(QModbusDevice::Error error, const QString &errorText)
$method=5,8,0|void|setError|QModbusDevice::Error,const QString &

$beginSignals
$signal=5,8,0|finished()
$signal=5,8,0|errorOccurred(QModbusDevice::Error)
$endSignals

#pragma ENDDUMP
