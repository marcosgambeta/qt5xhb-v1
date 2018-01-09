%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
   METHOD addCaCertificates
   METHOD caCertificates
   METHOD ciphers
   METHOD connectToHostEncrypted
   METHOD encryptedBytesAvailable
   METHOD encryptedBytesToWrite
   METHOD flush
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
   METHOD setCiphers
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
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
$internalMethod=|bool|addCaCertificates,addCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addCaCertificates ( const QList<QSslCertificate> & certificates )
$internalMethod=|void|addCaCertificates,addCaCertificates2|const QList<QSslCertificate> &

//[1]bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QSslSocket_addCaCertificates1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_addCaCertificates2();
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
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted2|const QString &,quint16,const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

//[1]void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
//[2]void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QSslSocket_connectToHostEncrypted1();
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISOPTNUM(4) )
  {
    QSslSocket_connectToHostEncrypted2();
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
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=void ignoreSslErrors ()
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]void ignoreSslErrors ()

HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QSslSocket_ignoreSslErrors2();
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
$internalMethod=|void|setCiphers,setCiphers1|const QList<QSslCipher> &

$prototype=void setCiphers ( const QString & ciphers )
$internalMethod=|void|setCiphers,setCiphers2|const QString &

//[1]void setCiphers ( const QList<QSslCipher> & ciphers )
//[2]void setCiphers ( const QString & ciphers )

HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_setCiphers1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSslSocket_setCiphers2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setLocalCertificate ( const QSslCertificate & certificate )
$internalMethod=|void|setLocalCertificate,setLocalCertificate1|const QSslCertificate &

$prototype=void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
$internalMethod=|void|setLocalCertificate,setLocalCertificate2|const QString &,QSsl::EncodingFormat=QSsl::Pem

//[1]void setLocalCertificate ( const QSslCertificate & certificate )
//[2]void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )

HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE )
{
  if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    QSslSocket_setLocalCertificate1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QSslSocket_setLocalCertificate2();
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
$internalMethod=|void|setPrivateKey,setPrivateKey1|const QSslKey &

$prototype=void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
$internalMethod=|void|setPrivateKey,setPrivateKey2|const QString &,QSsl::KeyAlgorithm=QSsl::Rsa,QSsl::EncodingFormat=QSsl::Pem,const QByteArray &=QByteArray()

//[1]void setPrivateKey ( const QSslKey & key )
//[2]void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )

HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY )
{
  if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    QSslSocket_setPrivateKey1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTQBYTEARRAY(4) )
  {
    QSslSocket_setPrivateKey2();
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
$virtualMethod=|bool|atEnd|

$prototype=virtual qint64 bytesAvailable () const
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$virtualMethod=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine () const
$virtualMethod=|bool|canReadLine|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$prototype=void startClientEncryption ()
$method=|void|startClientEncryption|

$prototype=void startServerEncryption ()
$method=|void|startServerEncryption|

$prototype=static void addDefaultCaCertificate ( const QSslCertificate & certificate )
$staticMethod=|void|addDefaultCaCertificate|const QSslCertificate &

$prototype=static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$internalStaticMethod=|bool|addDefaultCaCertificates,addDefaultCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=static void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
$internalStaticMethod=|void|addDefaultCaCertificates,addDefaultCaCertificates2|const QList<QSslCertificate> &

//[1]bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QSslSocket_addDefaultCaCertificates1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_addDefaultCaCertificates2();
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
