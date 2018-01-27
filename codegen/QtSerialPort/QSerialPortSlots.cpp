%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,1,0|baudRateChanged( qint32 baudRate, QSerialPort::Directions dir )
$slot=5,1,0|dataBitsChanged( QSerialPort::DataBits dataBits )
$slot=5,1,0|parityChanged( QSerialPort::Parity parity )
$slot=5,1,0|stopBitsChanged( QSerialPort::StopBits stopBits )
$slot=5,1,0|flowControlChanged( QSerialPort::FlowControl flow )
$slot=5,1,0|dataErrorPolicyChanged( QSerialPort::DataErrorPolicy policy )
$slot=5,1,0|dataTerminalReadyChanged( bool set )
$slot=5,1,0|requestToSendChanged( bool set )
$slot=5,1,0|error( QSerialPort::SerialPortError serialPortError )
$slot=5,1,0|settingsRestoredOnCloseChanged( bool restore )
$endSlotsClass

$signalMethod=5,1,0|baudRateChanged(qint32,QSerialPort::Directions)
$signalMethod=5,1,0|dataBitsChanged(QSerialPort::DataBits)
$signalMethod=5,1,0|parityChanged(QSerialPort::Parity)
$signalMethod=5,1,0|stopBitsChanged(QSerialPort::StopBits)
$signalMethod=5,1,0|flowControlChanged(QSerialPort::FlowControl)
$signalMethod=5,1,0|dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)
$signalMethod=5,1,0|dataTerminalReadyChanged(bool)
$signalMethod=5,1,0|requestToSendChanged(bool)
$signalMethod=5,1,0|error(QSerialPort::SerialPortError)
$signalMethod=5,1,0|settingsRestoredOnCloseChanged(bool)
