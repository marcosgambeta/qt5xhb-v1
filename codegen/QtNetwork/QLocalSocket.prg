$header

#include "hbclass.ch"

CLASS QLocalSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToServer
   METHOD disconnectFromServer
   METHOD error
   METHOD flush
   METHOD fullServerName
   METHOD isValid
   METHOD readBufferSize
   METHOD serverName
   METHOD setReadBufferSize
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLocalSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void abort ()
$method=|void|abort|

$prototype=void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
$method=|void|connectToServer|const QString &,QLocalSocket::OpenMode=QLocalSocket::ReadWrite

$prototype=void disconnectFromServer ()
$method=|void|disconnectFromServer|

$prototype=LocalSocketError error () const
$method=|QLocalSocket::LocalSocketError|error|

$prototype=bool flush ()
$method=|bool|flush|

$prototype=QString fullServerName () const
$method=|QString|fullServerName|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=QString serverName () const
$method=|QString|serverName|

$prototype=void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=LocalSocketState state () const
$method=|QLocalSocket::LocalSocketState|state|

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototype=virtual qint64 bytesAvailable () const
$method=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$method=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine () const
$method=|bool|canReadLine|

$prototype=virtual void close ()
$method=|void|close|

$prototype=virtual bool isSequential () const
$method=|bool|isSequential|

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$method=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$method=|bool|waitForReadyRead|int=30000

#pragma ENDDUMP
