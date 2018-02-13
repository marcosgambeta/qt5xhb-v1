%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,1,0

$beginSlotsClass
$signal=5,1,0|void baudRateChanged( qint32 baudRate, QSerialPort::Directions dir )
$signal=5,1,0|void dataBitsChanged( QSerialPort::DataBits dataBits )
$signal=5,1,0|void parityChanged( QSerialPort::Parity parity )
$signal=5,1,0|void stopBitsChanged( QSerialPort::StopBits stopBits )
$signal=5,1,0|void flowControlChanged( QSerialPort::FlowControl flow )
$signal=5,1,0|void dataErrorPolicyChanged( QSerialPort::DataErrorPolicy policy )
$signal=5,1,0|void dataTerminalReadyChanged( bool set )
$signal=5,1,0|void requestToSendChanged( bool set )
$signal=5,1,0|void error( QSerialPort::SerialPortError serialPortError )
$signal=5,1,0|void settingsRestoredOnCloseChanged( bool restore )
$endSlotsClass
