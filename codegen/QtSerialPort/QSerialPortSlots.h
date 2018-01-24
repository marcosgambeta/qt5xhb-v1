%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,1,0

$beginSlotsClass
  void baudRateChanged(qint32 baudRate, QSerialPort::Directions dir);
  void dataBitsChanged(QSerialPort::DataBits dataBits);
  void parityChanged(QSerialPort::Parity parity);
  void stopBitsChanged(QSerialPort::StopBits stopBits);
  void flowControlChanged(QSerialPort::FlowControl flow);
  void dataErrorPolicyChanged(QSerialPort::DataErrorPolicy policy);
  void dataTerminalReadyChanged(bool set);
  void requestToSendChanged(bool set);
  void error(QSerialPort::SerialPortError serialPortError);
  void settingsRestoredOnCloseChanged(bool restore);
$endSlotsClass
