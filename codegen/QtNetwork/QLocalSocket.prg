%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIODevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLocalSocket(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QLocalSocket()
$deleteMethod

$prototype=void connectToServer(OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToServer,connectToServer1|QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToServer(const QString &name, OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToServer,connectToServer2|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

//[1]void connectToServer(OpenMode openMode = ReadWrite)
//[2]void connectToServer(const QString &name, OpenMode openMode = ReadWrite)

HB_FUNC_STATIC( QLOCALSOCKET_CONNECTTOSERVER )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QLocalSocket_connectToServer1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QLocalSocket_connectToServer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectToServer

$prototype=void disconnectFromServer()
$method=|void|disconnectFromServer|

$prototype=void setServerName(const QString &name)
$method=|void|setServerName|const QString &

$prototype=QString serverName() const
$method=|QString|serverName|

$prototype=QString fullServerName() const
$method=|QString|fullServerName|

$prototype=void abort()
$method=|void|abort|

$prototype=virtual bool isSequential() const Q_DECL_OVERRIDE
$virtualMethod=|bool|isSequential|

$prototype=virtual qint64 bytesAvailable() const Q_DECL_OVERRIDE
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite() const Q_DECL_OVERRIDE
$virtualMethod=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine() const Q_DECL_OVERRIDE
$virtualMethod=|bool|canReadLine|

$prototype=virtual bool open(OpenMode openMode = ReadWrite) Q_DECL_OVERRIDE
$virtualMethod=|bool|open|QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=virtual void close() Q_DECL_OVERRIDE
$virtualMethod=|void|close|

$prototype=LocalSocketError error() const
$method=|QLocalSocket::LocalSocketError|error|

$prototype=bool flush()
$method=|bool|flush|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=qint64 readBufferSize() const
$method=|qint64|readBufferSize|

$prototype=void setReadBufferSize(qint64 size)
$method=|void|setReadBufferSize|qint64

$prototype=bool setSocketDescriptor(qintptr socketDescriptor, LocalSocketState socketState = ConnectedState, OpenMode openMode = ReadWrite)
$method=|bool|setSocketDescriptor|qintptr,QLocalSocket::LocalSocketState=QLocalSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=qintptr socketDescriptor() const
$method=|qintptr|socketDescriptor|

$prototype=LocalSocketState state() const
$method=|QLocalSocket::LocalSocketState|state|

$prototype=bool waitForBytesWritten(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForBytesWritten|int=30000

$prototype=bool waitForConnected(int msecs = 30000)
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected(int msecs = 30000)
$method=|bool|waitForDisconnected|int=30000

$prototype=bool waitForReadyRead(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForReadyRead|int=30000

$prototype=virtual qint64 readData(char*, qint64) Q_DECL_OVERRIDE (protected)

$prototype=virtual qint64 writeData(const char*, qint64) Q_DECL_OVERRIDE (protected)

$beginSignals
$signal=|connected()
$signal=|disconnected()
$signal=|error(QLocalSocket::LocalSocketError)
$signal=|stateChanged(QLocalSocket::LocalSocketState)
$endSignals

#pragma ENDDUMP
