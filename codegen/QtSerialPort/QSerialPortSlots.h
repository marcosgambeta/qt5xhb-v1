%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,1,0

$beginSlotsClass
$signal=5,1,0|baudRateChanged( qint32 baudRate, QSerialPort::Directions dir )
$signal=5,1,0|dataBitsChanged( QSerialPort::DataBits dataBits )
$signal=5,1,0|parityChanged( QSerialPort::Parity parity )
$signal=5,1,0|stopBitsChanged( QSerialPort::StopBits stopBits )
$signal=5,1,0|flowControlChanged( QSerialPort::FlowControl flow )
$signal=5,1,0|dataErrorPolicyChanged( QSerialPort::DataErrorPolicy policy )
$signal=5,1,0|dataTerminalReadyChanged( bool set )
$signal=5,1,0|requestToSendChanged( bool set )
$signal=5,1,0|error( QSerialPort::SerialPortError serialPortError )
$signal=5,1,0|settingsRestoredOnCloseChanged( bool restore )
$endSlotsClass
