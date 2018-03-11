%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSerialPort INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD setPortName
   METHOD portName
   METHOD setPort
   METHOD open
   METHOD close
   METHOD setSettingsRestoredOnClose
   METHOD settingsRestoredOnClose
   METHOD setBaudRate
   METHOD baudRate
   METHOD setDataBits
   METHOD dataBits
   METHOD setParity
   METHOD parity
   METHOD setStopBits
   METHOD stopBits
   METHOD setFlowControl
   METHOD flowControl
   METHOD setDataTerminalReady
   METHOD isDataTerminalReady
   METHOD setRequestToSend
   METHOD isRequestToSend
   METHOD pinoutSignals
   METHOD flush
   METHOD clear
   METHOD atEnd
   METHOD setDataErrorPolicy
   METHOD dataErrorPolicy
   METHOD error
   METHOD clearError
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD waitForReadyRead
   METHOD waitForBytesWritten
   METHOD sendBreak
   METHOD setBreakEnabled

   METHOD onBaudRateChanged
   METHOD onDataBitsChanged
   METHOD onParityChanged
   METHOD onStopBitsChanged
   METHOD onFlowControlChanged
   METHOD onDataErrorPolicyChanged
   METHOD onDataTerminalReadyChanged
   METHOD onRequestToSendChanged
   METHOD onError
   METHOD onSettingsRestoredOnCloseChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QSerialPort(QObject *parent = 0)
$internalConstructor=5,1,0|new1|QObject *=0

$prototype=QSerialPort(const QString &name, QObject *parent = 0)
$internalConstructor=5,1,0|new2|const QString &,QObject *=0

$prototype=QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)
$internalConstructor=5,1,0|new3|const QSerialPortInfo &,QObject *=0

//[1]QSerialPort(QObject *parent = 0)
//[2]QSerialPort(const QString &name, QObject *parent = 0)
//[3]QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)

HB_FUNC_STATIC( QSERIALPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSerialPort_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSerialPort_new2();
  }
  else if( ISBETWEEN(1,2) && ISQSERIALPORTINFO(1) && ISOPTQOBJECT(2) )
  {
    QSerialPort_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

$prototype=void setPortName(const QString &name)
$method=5,1,0|void|setPortName|const QString &

$prototype=QString portName() const
$method=5,1,0|QString|portName|

$prototype=void setPort(const QSerialPortInfo &info)
$method=5,1,0|void|setPort|const QSerialPortInfo &

$prototype=bool open(OpenMode mode) Q_DECL_OVERRIDE
$method=5,1,0|bool|open|QIODevice::OpenMode

$prototype=void close() Q_DECL_OVERRIDE
$method=5,1,0|void|close|

$prototype=void setSettingsRestoredOnClose(bool restore)
$method=5,1,0|void|setSettingsRestoredOnClose|bool

$prototype=bool settingsRestoredOnClose() const
$method=5,1,0|bool|settingsRestoredOnClose|

$prototype=bool setBaudRate(qint32 baudRate, Directions dir = AllDirections)
$method=5,1,0|bool|setBaudRate|qint32,QSerialPort::Directions=QSerialPort::AllDirections

$prototype=qint32 baudRate(Directions dir = AllDirections) const
$method=5,1,0|qint32|baudRate|QSerialPort::Directions=QSerialPort::AllDirections

$prototype=bool setDataBits(DataBits dataBits)
$method=5,1,0|bool|setDataBits|QSerialPort::DataBits

$prototype=DataBits dataBits() const
$method=5,1,0|QSerialPort::DataBits|dataBits|

$prototype=bool setParity(Parity parity)
$method=5,1,0|bool|setParity|QSerialPort::Parity

$prototype=Parity parity() const
$method=5,1,0|QSerialPort::Parity|parity|

$prototype=bool setStopBits(StopBits stopBits)
$method=5,1,0|bool|setStopBits|QSerialPort::StopBits

$prototype=StopBits stopBits() const
$method=5,1,0|QSerialPort::StopBits|stopBits|

$prototype=bool setFlowControl(FlowControl flow)
$method=5,1,0|bool|setFlowControl|QSerialPort::FlowControl

$prototype=FlowControl flowControl() const
$method=5,1,0|QSerialPort::FlowControl|flowControl|

$prototype=bool setDataTerminalReady(bool set)
$method=5,1,0|bool|setDataTerminalReady|bool

$prototype=bool isDataTerminalReady()
$method=5,1,0|bool|isDataTerminalReady|

$prototype=bool setRequestToSend(bool set)
$method=5,1,0|bool|setRequestToSend|bool

$prototype=bool isRequestToSend()
$method=5,1,0|bool|isRequestToSend|

$prototype=PinoutSignals pinoutSignals()
$method=5,1,0|QSerialPort::PinoutSignals|pinoutSignals|

$prototype=bool flush()
$method=5,1,0|bool|flush|

$prototype=bool clear(Directions dir = AllDirections)
$method=5,1,0|bool|clear|QSerialPort::Directions=QSerialPort::AllDirections

$prototype=bool atEnd() const Q_DECL_OVERRIDE
$method=5,1,0|bool|atEnd|

$prototype=bool setDataErrorPolicy(DataErrorPolicy policy = IgnorePolicy)
$method=5,1,0|bool|setDataErrorPolicy|QSerialPort::DataErrorPolicy=QSerialPort::IgnorePolicy

$prototype=DataErrorPolicy dataErrorPolicy() const
$method=5,1,0|QSerialPort::DataErrorPolicy|dataErrorPolicy|

$prototype=SerialPortError error() const
$method=5,1,0|QSerialPort::SerialPortError|error|

$prototype=void clearError()
$method=5,1,0|void|clearError|

$prototype=qint64 readBufferSize() const
$method=5,1,0|qint64|readBufferSize|

$prototype=void setReadBufferSize(qint64 size)
$method=5,1,0|void|setReadBufferSize|qint64

$prototype=bool isSequential() const Q_DECL_OVERRIDE
$method=5,1,0|bool|isSequential|

$prototype=qint64 bytesAvailable() const Q_DECL_OVERRIDE
$method=5,1,0|qint64|bytesAvailable|

$prototype=qint64 bytesToWrite() const Q_DECL_OVERRIDE
$method=5,1,0|qint64|bytesToWrite|

$prototype=bool canReadLine() const Q_DECL_OVERRIDE
$method=5,1,0|bool|canReadLine|

$prototype=bool waitForReadyRead(int msecs) Q_DECL_OVERRIDE
$method=5,1,0|bool|waitForReadyRead|int

$prototype=bool waitForBytesWritten(int msecs) Q_DECL_OVERRIDE
$method=5,1,0|bool|waitForBytesWritten|int

$prototype=bool sendBreak(int duration = 0)
$method=5,1,0|bool|sendBreak|int=0

$prototype=bool setBreakEnabled(bool set = true)
$method=5,1,0|bool|setBreakEnabled|bool=true

$beginSignals
$signal=5,1,0|baudRateChanged(qint32,QSerialPort::Directions)
$signal=5,1,0|dataBitsChanged(QSerialPort::DataBits)
$signal=5,1,0|parityChanged(QSerialPort::Parity)
$signal=5,1,0|stopBitsChanged(QSerialPort::StopBits)
$signal=5,1,0|flowControlChanged(QSerialPort::FlowControl)
$signal=5,1,0|dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)
$signal=5,1,0|dataTerminalReadyChanged(bool)
$signal=5,1,0|requestToSendChanged(bool)
$signal=5,1,0|error(QSerialPort::SerialPortError)
$signal=5,1,0|settingsRestoredOnCloseChanged(bool)
$endSignals

#pragma ENDDUMP
