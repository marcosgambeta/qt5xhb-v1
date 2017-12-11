$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
REQUEST QVARIANT
REQUEST QSSLCONFIGURATION
REQUEST QSSLERROR
#endif

CLASS QSslSocket INHERIT QTcpSocket

   METHOD new
   METHOD delete
   METHOD abort
   METHOD addCaCertificate
   METHOD addCaCertificates1
   METHOD addCaCertificates2
   METHOD addCaCertificates
   METHOD caCertificates
   METHOD ciphers
   METHOD connectToHostEncrypted1
   METHOD connectToHostEncrypted2
   METHOD connectToHostEncrypted
   METHOD encryptedBytesAvailable
   METHOD encryptedBytesToWrite
   METHOD flush
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isEncrypted
   METHOD localCertificate
   METHOD mode
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers1
   METHOD setCiphers2
   METHOD setCiphers
   METHOD setLocalCertificate1
   METHOD setLocalCertificate2
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey1
   METHOD setPrivateKey2
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD setSslConfiguration
   METHOD socketOption
   METHOD sslConfiguration
   METHOD sslErrors
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD waitForEncrypted
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD startClientEncryption
   METHOD startServerEncryption
   METHOD addDefaultCaCertificate
   METHOD addDefaultCaCertificates1
   METHOD addDefaultCaCertificates2
   METHOD addDefaultCaCertificates
   METHOD defaultCaCertificates
   METHOD defaultCiphers
   METHOD setDefaultCaCertificates
   METHOD setDefaultCiphers
   METHOD supportedCiphers
   METHOD supportsSsl
   METHOD systemCaCertificates

   METHOD onEncrypted
   METHOD onEncryptedBytesWritten
   METHOD onModeChanged
   METHOD onPeerVerifyError
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSslKey>
#include <QSslCipher>
#include <QSslConfiguration>

$prototype=QSslSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void abort ()
$method=|void|abort|

$prototype=void addCaCertificate ( const QSslCertificate & certificate )
$method=|void|addCaCertificate|const QSslCertificate &

$prototype=bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$method=|bool|addCaCertificates,addCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addCaCertificates ( const QList<QSslCertificate> & certificates )
$method=|void|addCaCertificates,addCaCertificates2|const QList<QSslCertificate> &

//[1]bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QSslCertificate> caCertificates () const
$method=|QList<QSslCertificate>|caCertificates|

$prototype=QList<QSslCipher> ciphers () const
$method=|QList<QSslCipher>|ciphers|

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
$method=|void|connectToHostEncrypted,connectToHostEncrypted1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
$method=|void|connectToHostEncrypted,connectToHostEncrypted2|const QString &,quint16,const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

//[1]void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
//[2]void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED1 );
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qint64 encryptedBytesAvailable () const
$method=|qint64|encryptedBytesAvailable|

$prototype=qint64 encryptedBytesToWrite () const
$method=|qint64|encryptedBytesToWrite|

$prototype=bool flush ()
$method=|bool|flush|

$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
$method=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=void ignoreSslErrors ()
$method=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]void ignoreSslErrors ()

HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isEncrypted () const
$method=|bool|isEncrypted|

$prototype=QSslCertificate localCertificate () const
$method=|QSslCertificate|localCertificate|

$prototype=SslMode mode () const
$method=|QSslSocket::SslMode|mode|

$prototype=QSslCertificate peerCertificate () const
$method=|QSslCertificate|peerCertificate|

$prototype=QList<QSslCertificate> peerCertificateChain () const
$method=|QList<QSslCertificate>|peerCertificateChain|

$prototype=int peerVerifyDepth () const
$method=|int|peerVerifyDepth|

$prototype=QSslSocket::PeerVerifyMode peerVerifyMode () const
$method=|QSslSocket::PeerVerifyMode|peerVerifyMode|

$prototype=QSslKey privateKey () const
$method=|QSslKey|privateKey|

$prototype=QSsl::SslProtocol protocol () const
$method=|QSsl::SslProtocol|protocol|

$prototype=QSslCipher sessionCipher () const
$method=|QSslCipher|sessionCipher|

$prototype=void setCaCertificates ( const QList<QSslCertificate> & certificates )
$method=|void|setCaCertificates|const QList<QSslCertificate> &

$prototype=void setCiphers ( const QList<QSslCipher> & ciphers )
$method=|void|setCiphers,setCiphers1|const QList<QSslCipher> &

$prototype=void setCiphers ( const QString & ciphers )
$method=|void|setCiphers,setCiphers2|const QString &

//[1]void setCiphers ( const QList<QSslCipher> & ciphers )
//[2]void setCiphers ( const QString & ciphers )

HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setLocalCertificate ( const QSslCertificate & certificate )
$method=|void|setLocalCertificate,setLocalCertificate1|const QSslCertificate &

$prototype=void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
$method=|void|setLocalCertificate,setLocalCertificate2|const QString &,QSsl::EncodingFormat=QSsl::Pem

//[1]void setLocalCertificate ( const QSslCertificate & certificate )
//[2]void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )

HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE )
{
  if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPeerVerifyDepth ( int depth )
$method=|void|setPeerVerifyDepth|int

$prototype=void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=void setPrivateKey ( const QSslKey & key )
$method=|void|setPrivateKey,setPrivateKey1|const QSslKey &

$prototype=void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
$method=|void|setPrivateKey,setPrivateKey2|const QString &,QSsl::KeyAlgorithm=QSsl::Rsa,QSsl::EncodingFormat=QSsl::Pem,const QByteArray &=QByteArray()

//[1]void setPrivateKey ( const QSslKey & key )
//[2]void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )

HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY )
{
  if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETPRIVATEKEY1 );
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTQBYTEARRAY(4) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETPRIVATEKEY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setProtocol ( QSsl::SslProtocol protocol )
$method=|void|setProtocol|QSsl::SslProtocol

$prototype=void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=bool setSocketDescriptor ( int socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite )
$method=|bool|setSocketDescriptor|int,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
$method=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototype=void setSslConfiguration ( const QSslConfiguration & configuration )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=QVariant socketOption ( QAbstractSocket::SocketOption option )
$method=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=QList<QSslError> sslErrors () const
$method=|QList<QSslError>|sslErrors|

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototype=bool waitForEncrypted ( int msecs = 30000 )
$method=|bool|waitForEncrypted|int=30000

$prototype=virtual bool atEnd () const
$method=|bool|atEnd|

$prototype=virtual qint64 bytesAvailable () const
$method=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$method=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine () const
$method=|bool|canReadLine|

$prototype=virtual void close ()
$method=|void|close|

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$method=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$method=|bool|waitForReadyRead|int=30000

$prototype=void startClientEncryption ()
$method=|void|startClientEncryption|

$prototype=void startServerEncryption ()
$method=|void|startServerEncryption|

$prototype=static void addDefaultCaCertificate ( const QSslCertificate & certificate )
$staticMethod=|void|addDefaultCaCertificate|const QSslCertificate &

$prototype=static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$staticMethod=|bool|addDefaultCaCertificates,addDefaultCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=static void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
$staticMethod=|void|addDefaultCaCertificates,addDefaultCaCertificates2|const QList<QSslCertificate> &

//[1]bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QList<QSslCertificate> defaultCaCertificates ()
$staticMethod=|QList<QSslCertificate>|defaultCaCertificates|

$prototype=static QList<QSslCipher> defaultCiphers ()
$staticMethod=|QList<QSslCipher>|defaultCiphers|

$prototype=static void setDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
$staticMethod=|void|setDefaultCaCertificates|const QList<QSslCertificate> &

$prototype=static void setDefaultCiphers ( const QList<QSslCipher> & ciphers )
$staticMethod=|void|setDefaultCiphers|const QList<QSslCipher> &

$prototype=static QList<QSslCipher> supportedCiphers ()
$staticMethod=|QList<QSslCipher>|supportedCiphers|

$prototype=static bool supportsSsl ()
$staticMethod=|bool|supportsSsl|

$prototype=static QList<QSslCertificate> systemCaCertificates ()
$staticMethod=|QList<QSslCertificate>|systemCaCertificates|

#pragma ENDDUMP
