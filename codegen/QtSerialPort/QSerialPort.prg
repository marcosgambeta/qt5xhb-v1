$header

#include "hbclass.ch"

CLASS QSerialPort INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*
QSerialPort(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * o = new QSerialPort ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSerialPort(const QString &name, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * o = new QSerialPort ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * o = new QSerialPort ( *PQSERIALPORTINFO(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QSerialPort(QObject *parent = 0)
//[2]QSerialPort(const QString &name, QObject *parent = 0)
//[3]QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)

// TODO: resolver conflito entre [1] e [2] quando for 1 parâmetro do tipo O

HB_FUNC_STATIC( QSERIALPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSERIALPORT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSERIALPORT_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQSERIALPORTINFO(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSERIALPORT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

/*
void setPortName(const QString &name)
*/
$method=5,1,0|void|setPortName|const QString &

/*
QString portName() const
*/
$method=5,1,0|QString|portName|

/*
void setPort(const QSerialPortInfo &info)
*/
$method=5,1,0|void|setPort|const QSerialPortInfo &

/*
bool open(OpenMode mode) Q_DECL_OVERRIDE
*/
$method=5,1,0|bool|open|QIODevice::OpenMode

/*
void close() Q_DECL_OVERRIDE
*/
$method=5,1,0|void|close|

/*
void setSettingsRestoredOnClose(bool restore)
*/
$method=5,1,0|void|setSettingsRestoredOnClose|bool

/*
bool settingsRestoredOnClose() const
*/
$method=5,1,0|bool|settingsRestoredOnClose|

/*
bool setBaudRate(qint32 baudRate, Directions dir = AllDirections)
*/
$method=5,1,0|bool|setBaudRate|qint32,QSerialPort::Directions=QSerialPort::AllDirections

/*
qint32 baudRate(Directions dir = AllDirections) const
*/
$method=5,1,0|qint32|baudRate|QSerialPort::Directions=QSerialPort::AllDirections

/*
bool setDataBits(DataBits dataBits)
*/
$method=5,1,0|bool|setDataBits|QSerialPort::DataBits

/*
DataBits dataBits() const
*/
$method=5,1,0|QSerialPort::DataBits|dataBits|

/*
bool setParity(Parity parity)
*/
$method=5,1,0|bool|setParity|QSerialPort::Parity

/*
Parity parity() const
*/
$method=5,1,0|QSerialPort::Parity|parity|

/*
bool setStopBits(StopBits stopBits)
*/
$method=5,1,0|bool|setStopBits|QSerialPort::StopBits

/*
StopBits stopBits() const
*/
$method=5,1,0|QSerialPort::StopBits|stopBits|

/*
bool setFlowControl(FlowControl flow)
*/
$method=5,1,0|bool|setFlowControl|QSerialPort::FlowControl

/*
FlowControl flowControl() const
*/
$method=5,1,0|QSerialPort::FlowControl|flowControl|

/*
bool setDataTerminalReady(bool set)
*/
$method=5,1,0|bool|setDataTerminalReady|bool

/*
bool isDataTerminalReady()
*/
$method=5,1,0|bool|isDataTerminalReady|

/*
bool setRequestToSend(bool set)
*/
$method=5,1,0|bool|setRequestToSend|bool

/*
bool isRequestToSend()
*/
$method=5,1,0|bool|isRequestToSend|

/*
PinoutSignals pinoutSignals()
*/
$method=5,1,0|QSerialPort::PinoutSignals|pinoutSignals|

/*
bool flush()
*/
$method=5,1,0|bool|flush|

/*
bool clear(Directions dir = AllDirections)
*/
$method=5,1,0|bool|clear|QSerialPort::Directions=QSerialPort::AllDirections

/*
bool atEnd() const Q_DECL_OVERRIDE
*/
$method=5,1,0|bool|atEnd|

/*
bool setDataErrorPolicy(DataErrorPolicy policy = IgnorePolicy)
*/
$method=5,1,0|bool|setDataErrorPolicy|QSerialPort::DataErrorPolicy=QSerialPort::IgnorePolicy

/*
DataErrorPolicy dataErrorPolicy() const
*/
$method=5,1,0|QSerialPort::DataErrorPolicy|dataErrorPolicy|

/*
SerialPortError error() const
*/
$method=5,1,0|QSerialPort::SerialPortError|error|

/*
void clearError()
*/
$method=5,1,0|void|clearError|

/*
qint64 readBufferSize() const
*/
$method=5,1,0|qint64|readBufferSize|

/*
void setReadBufferSize(qint64 size)
*/
$method=5,1,0|void|setReadBufferSize|qint64

/*
bool isSequential() const Q_DECL_OVERRIDE
*/
$method=5,1,0|bool|isSequential|

/*
qint64 bytesAvailable() const Q_DECL_OVERRIDE
*/
$method=5,1,0|qint64|bytesAvailable|

/*
qint64 bytesToWrite() const Q_DECL_OVERRIDE
*/
$method=5,1,0|qint64|bytesToWrite|

/*
bool canReadLine() const Q_DECL_OVERRIDE
*/
$method=5,1,0|bool|canReadLine|

/*
bool waitForReadyRead(int msecs) Q_DECL_OVERRIDE
*/
$method=5,1,0|bool|waitForReadyRead|int

/*
bool waitForBytesWritten(int msecs) Q_DECL_OVERRIDE
*/
$metho=5,1,0|bool|waitForBytesWritten|int

/*
bool sendBreak(int duration = 0)
*/
$method=5,1,0|bool|sendBreak|int=0

/*
bool setBreakEnabled(bool set = true)
*/
$mtehod=5,1,0|bool|setBreakEnabled|bool=true

#pragma ENDDUMP
