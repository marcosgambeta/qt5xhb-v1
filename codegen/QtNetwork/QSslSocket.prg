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

   DATA self_destruction INIT .F.

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

/*
QSslSocket ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void abort ()
*/
$method=|void|abort|

/*
void addCaCertificate ( const QSslCertificate & certificate )
*/
$method=|void|addCaCertificate|const QSslCertificate &

/*
bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
$method=|bool|addCaCertificates,addCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

/*
void addCaCertificates ( const QList<QSslCertificate> & certificates )
*/
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

/*
QList<QSslCertificate> caCertificates () const
*/
$method=|QList<QSslCertificate>|caCertificates|

/*
QList<QSslCipher> ciphers () const
*/
$method=|QList<QSslCipher>|ciphers|

/*
void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
*/
$method=|void|connectToHostEncrypted,connectToHostEncrypted1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

/*
void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
*/
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

/*
qint64 encryptedBytesAvailable () const
*/
$method=|qint64|encryptedBytesAvailable|

/*
qint64 encryptedBytesToWrite () const
*/
$method=|qint64|encryptedBytesToWrite|

/*
bool flush ()
*/
$method=|bool|flush|

/*
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
$method=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

/*
void ignoreSslErrors ()
*/
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

/*
bool isEncrypted () const
*/
$method=|bool|isEncrypted|

/*
QSslCertificate localCertificate () const
*/
$method=|QSslCertificate|localCertificate|

/*
SslMode mode () const
*/
$method=|QSslSocket::SslMode|mode|

/*
QSslCertificate peerCertificate () const
*/
$method=|QSslCertificate|peerCertificate|

/*
QList<QSslCertificate> peerCertificateChain () const
*/
$method=|QList<QSslCertificate>|peerCertificateChain|

/*
int peerVerifyDepth () const
*/
$method=|int|peerVerifyDepth|

/*
QSslSocket::PeerVerifyMode peerVerifyMode () const
*/
$method=|QSslSocket::PeerVerifyMode|peerVerifyMode|

/*
QSslKey privateKey () const
*/
$method=|QSslKey|privateKey|

/*
QSsl::SslProtocol protocol () const
*/
$method=|QSsl::SslProtocol|protocol|

/*
QSslCipher sessionCipher () const
*/
$method=|QSslCipher|sessionCipher|

/*
void setCaCertificates ( const QList<QSslCertificate> & certificates )
*/
$method=|void|setCaCertificates|const QList<QSslCertificate> &

/*
void setCiphers ( const QList<QSslCipher> & ciphers )
*/
$method=|void|setCiphers,setCiphers1|const QList<QSslCipher> &

/*
void setCiphers ( const QString & ciphers )
*/
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

/*
void setLocalCertificate ( const QSslCertificate & certificate )
*/
$method=|void|setLocalCertificate,setLocalCertificate1|const QSslCertificate &

/*
void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
*/
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

/*
void setPeerVerifyDepth ( int depth )
*/
$method=|void|setPeerVerifyDepth|int

/*
void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
*/
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

/*
void setPrivateKey ( const QSslKey & key )
*/
$method=|void|setPrivateKey,setPrivateKey1|const QSslKey &

/*
void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
*/
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

/*
void setProtocol ( QSsl::SslProtocol protocol )
*/
$method=|void|setProtocol|QSsl::SslProtocol

/*
void setReadBufferSize ( qint64 size )
*/
$method=|void|setReadBufferSize|qint64

/*
bool setSocketDescriptor ( int socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite )
*/
$method=|bool|setSocketDescriptor|int,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

/*
void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
*/
$method=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

/*
void setSslConfiguration ( const QSslConfiguration & configuration )
*/
$method=|void|setSslConfiguration|const QSslConfiguration &

/*
QVariant socketOption ( QAbstractSocket::SocketOption option )
*/
$method=|QVariant|socketOption|QAbstractSocket::SocketOption

/*
QSslConfiguration sslConfiguration () const
*/
$method=|QSslConfiguration|sslConfiguration|

/*
QList<QSslError> sslErrors () const
*/
$method=|QList<QSslError>|sslErrors|

/*
bool waitForConnected ( int msecs = 30000 )
*/
$method=|bool|waitForConnected|int=30000

/*
bool waitForDisconnected ( int msecs = 30000 )
*/
$method=|bool|waitForDisconnected|int=30000

/*
bool waitForEncrypted ( int msecs = 30000 )
*/
$method=|bool|waitForEncrypted|int=30000

/*
virtual bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual qint64 bytesAvailable () const
*/
$method=|qint64|bytesAvailable|

/*
virtual qint64 bytesToWrite () const
*/
$method=|qint64|bytesToWrite|

/*
virtual bool canReadLine () const
*/
$method=|bool|canReadLine|

/*
virtual void close ()
*/
$method=|void|close|

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
$method=|bool|waitForBytesWritten|int=30000

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
$method=|bool|waitForReadyRead|int=30000

/*
void startClientEncryption ()
*/
$method=|void|startClientEncryption|

/*
void startServerEncryption ()
*/
$method=|void|startServerEncryption|

/*
static void addDefaultCaCertificate ( const QSslCertificate & certificate )
*/
$staticMethod=|void|addDefaultCaCertificate|const QSslCertificate &

/*
static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
$staticMethod=|bool|addDefaultCaCertificates,addDefaultCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

/*
static void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/
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

/*
static QList<QSslCertificate> defaultCaCertificates ()
*/
$staticMethod=|QList<QSslCertificate>|defaultCaCertificates|

/*
static QList<QSslCipher> defaultCiphers ()
*/
$staticMethod=|QList<QSslCipher>|defaultCiphers|

/*
static void setDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/
$staticMethod=|void|setDefaultCaCertificates|const QList<QSslCertificate> &

/*
static void setDefaultCiphers ( const QList<QSslCipher> & ciphers )
*/
$staticMethod=|void|setDefaultCiphers|const QList<QSslCipher> &

/*
static QList<QSslCipher> supportedCiphers ()
*/
$staticMethod=|QList<QSslCipher>|supportedCiphers|

/*
static bool supportsSsl ()
*/
$staticMethod=|bool|supportsSsl|

/*
static QList<QSslCertificate> systemCaCertificates ()
*/
$staticMethod=|QList<QSslCertificate>|systemCaCertificates|

#pragma ENDDUMP
