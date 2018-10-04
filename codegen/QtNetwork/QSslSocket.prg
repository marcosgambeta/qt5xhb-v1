%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_SSL
%% #endif // QT_NO_SSL

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTcpSocket

$addMethods
%% #if QT_DEPRECATED_SINCE(5, 5)
%%   METHOD ciphers
%%   METHOD defaultCiphers
%%   METHOD setCiphers
%%   METHOD setDefaultCiphers
%%   METHOD supportedCiphers
%% #endif // QT_DEPRECATED_SINCE(5, 5)
%% #if QT_DEPRECATED_SINCE(5, 5)
%%   METHOD caCertificates
%%   METHOD setCaCertificates
%% #endif // QT_DEPRECATED_SINCE(5, 5)
%% #if QT_DEPRECATED_SINCE(5, 5)
%%   METHOD defaultCaCertificates
%%   METHOD setDefaultCaCertificates
%%   METHOD systemCaCertificates
%% #endif // QT_DEPRECATED_SINCE(5, 5)

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSslKey>
#include <QSslCipher>
#include <QSslConfiguration>

$prototype=explicit QSslSocket(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QSslSocket()
$deleteMethod

$prototype=void resume() Q_DECL_OVERRIDE
$method=|void|resume|

$prototype=void connectToHostEncrypted(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite,QAbstractSocket::NetworkLayerProtocol=QAbstractSocket::AnyIPProtocol

$prototype=void connectToHostEncrypted(const QString &hostName, quint16 port, const QString &sslPeerName, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted2|const QString &,quint16,const QString &,QIODevice::OpenMode=QIODevice::ReadWrite,QAbstractSocket::NetworkLayerProtocol=QAbstractSocket::AnyIPProtocol

//[1]void connectToHostEncrypted(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
//[2]void connectToHostEncrypted(const QString &hostName, quint16 port, const QString &sslPeerName, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)

HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QSslSocket_connectToHostEncrypted1();
  }
  else if( ISBETWEEN(3,5) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QSslSocket_connectToHostEncrypted2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectToHostEncrypted

$prototype=bool setSocketDescriptor(qintptr socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite) Q_DECL_OVERRIDE
$method=|bool|setSocketDescriptor|qintptr,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHost(const QString &hostName, quint16 port, OpenMode openMode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol) Q_DECL_OVERRIDE
$method=|void|connectToHost|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite,QAbstractSocket::NetworkLayerProtocol=QAbstractSocket::AnyIPProtocol

$prototype=void disconnectFromHost() Q_DECL_OVERRIDE
$method=|void|disconnectFromHost|

$prototype=virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant &value) Q_DECL_OVERRIDE
$virtualMethod=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototype=virtual QVariant socketOption(QAbstractSocket::SocketOption option) Q_DECL_OVERRIDE
$virtualMethod=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototype=SslMode mode() const
$method=|QSslSocket::SslMode|mode|

$prototype=bool isEncrypted() const
$method=|bool|isEncrypted|

$prototype=QSsl::SslProtocol protocol() const
$method=|QSsl::SslProtocol|protocol|

$prototype=void setProtocol(QSsl::SslProtocol protocol)
$method=|void|setProtocol|QSsl::SslProtocol

$prototype=QSslSocket::PeerVerifyMode peerVerifyMode() const
$method=|QSslSocket::PeerVerifyMode|peerVerifyMode|

$prototype=void setPeerVerifyMode(QSslSocket::PeerVerifyMode mode)
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=int peerVerifyDepth() const
$method=|int|peerVerifyDepth|

$prototype=void setPeerVerifyDepth(int depth)
$method=|void|setPeerVerifyDepth|int

$prototype=QString peerVerifyName() const
$method=|QString|peerVerifyName|

$prototype=void setPeerVerifyName(const QString &hostName)
$method=|void|setPeerVerifyName|const QString &

$prototype=qint64 bytesAvailable() const Q_DECL_OVERRIDE
$method=|qint64|bytesAvailable|

$prototype=qint64 bytesToWrite() const Q_DECL_OVERRIDE
$method=|qint64|bytesToWrite|

$prototype=bool canReadLine() const Q_DECL_OVERRIDE
$method=|bool|canReadLine|

$prototype=void close() Q_DECL_OVERRIDE
$method=|void|close|

$prototype=bool atEnd() const Q_DECL_OVERRIDE
$method=|bool|atEnd|

$prototype=bool flush()
$method=|bool|flush|

$prototype=void abort()
$method=|void|abort|

$prototype=void setReadBufferSize(qint64 size) Q_DECL_OVERRIDE
$method=|void|setReadBufferSize|qint64

$prototype=qint64 encryptedBytesAvailable() const
$method=|qint64|encryptedBytesAvailable|

$prototype=qint64 encryptedBytesToWrite() const
$method=|qint64|encryptedBytesToWrite|

$prototype=QSslConfiguration sslConfiguration() const
$method=|QSslConfiguration|sslConfiguration|

$prototype=void setSslConfiguration(const QSslConfiguration &config)
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=void setLocalCertificateChain(const QList<QSslCertificate> &localChain)
$method=5,1,0|void|setLocalCertificateChain|const QList<QSslCertificate> &

$prototype=QList<QSslCertificate> localCertificateChain() const
$method=5,1,0|QList<QSslCertificate>|localCertificateChain|

$prototype=void setLocalCertificate(const QSslCertificate &certificate)
$internalMethod=|void|setLocalCertificate,setLocalCertificate1|const QSslCertificate &

$prototype=void setLocalCertificate(const QString &fileName, QSsl::EncodingFormat format = QSsl::Pem)
$internalMethod=|void|setLocalCertificate,setLocalCertificate2|const QString &,QSsl::EncodingFormat=QSsl::Pem

//[1]void setLocalCertificate(const QSslCertificate &certificate)
//[2]void setLocalCertificate(const QString &fileName, QSsl::EncodingFormat format = QSsl::Pem)

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
$addMethod=setLocalCertificate

$prototype=QSslCertificate localCertificate() const
$method=|QSslCertificate|localCertificate|

$prototype=QSslCertificate peerCertificate() const
$method=|QSslCertificate|peerCertificate|

$prototype=QList<QSslCertificate> peerCertificateChain() const
$method=|QList<QSslCertificate>|peerCertificateChain|

$prototype=QSslCipher sessionCipher() const
$method=|QSslCipher|sessionCipher|

$prototype=QSsl::SslProtocol sessionProtocol() const
$method=5,4,0|QSsl::SslProtocol|sessionProtocol|

$prototype=void setPrivateKey(const QSslKey &key)
$internalMethod=|void|setPrivateKey,setPrivateKey1|const QSslKey &

$prototype=void setPrivateKey(const QString &fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray &passPhrase = QByteArray())
$internalMethod=|void|setPrivateKey,setPrivateKey2|const QString &,QSsl::KeyAlgorithm=QSsl::Rsa,QSsl::EncodingFormat=QSsl::Pem,const QByteArray &=QByteArray()

//[1]void setPrivateKey(const QSslKey &key)
//[2]void setPrivateKey(const QString &fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray &passPhrase = QByteArray())

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
$addMethod=setPrivateKey

$prototype=QSslKey privateKey() const
$method=|QSslKey|privateKey|

%% #if QT_DEPRECATED_SINCE(5, 5)
$prototype=QList<QSslCipher> ciphers() const
$method=|QList<QSslCipher>|ciphers|

$prototype=void setCiphers(const QList<QSslCipher> &ciphers)
$internalMethod=|void|setCiphers,setCiphers1|const QList<QSslCipher> &

$prototype=void setCiphers(const QString &ciphers)
$internalMethod=|void|setCiphers,setCiphers2|const QString &

//[1]void setCiphers(const QList<QSslCipher> &ciphers)
//[2]void setCiphers(const QString &ciphers)

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
$addMethod=setCiphers

$prototype=static void setDefaultCiphers(const QList<QSslCipher> &ciphers)
$staticMethod=|void|setDefaultCiphers|const QList<QSslCipher> &

$prototype=static QList<QSslCipher> defaultCiphers()
$staticMethod=|QList<QSslCipher>|defaultCiphers|

$prototype=static QList<QSslCipher> supportedCiphers()
$staticMethod=|QList<QSslCipher>|supportedCiphers|
%% #endif // QT_DEPRECATED_SINCE(5, 5)

$prototype=bool addCaCertificates(const QString &path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString)
$internalMethod=|bool|addCaCertificates,addCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addCaCertificates(const QList<QSslCertificate> &certificates)
$internalMethod=|void|addCaCertificates,addCaCertificates2|const QList<QSslCertificate> &

//[1]bool addCaCertificates(const QString &path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString)
//[2]void addCaCertificates(const QList<QSslCertificate> &certificates)

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
$addMethod=addCaCertificates

$prototype=void addCaCertificate(const QSslCertificate &certificate)
$method=|void|addCaCertificate|const QSslCertificate &

%% #if QT_DEPRECATED_SINCE(5, 5)
$prototype=void setCaCertificates(const QList<QSslCertificate> &certificates)
$method=|void|setCaCertificates|const QList<QSslCertificate> &

$prototype=QList<QSslCertificate> caCertificates() const
$method=|QList<QSslCertificate>|caCertificates|
%% #endif // QT_DEPRECATED_SINCE(5, 5)

$prototype=static void addDefaultCaCertificate(const QSslCertificate &certificate)
$staticMethod=|void|addDefaultCaCertificate|const QSslCertificate &

$prototype=static bool addDefaultCaCertificates(const QString &path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString)
$internalStaticMethod=|bool|addDefaultCaCertificates,addDefaultCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=static void addDefaultCaCertificates(const QList<QSslCertificate> &certificates)
$internalStaticMethod=|void|addDefaultCaCertificates,addDefaultCaCertificates2|const QList<QSslCertificate> &

//[1]static bool addDefaultCaCertificates(const QString &path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString)
//[2]static void addDefaultCaCertificates(const QList<QSslCertificate> &certificates)

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
$addMethod=addDefaultCaCertificates

%% #if QT_DEPRECATED_SINCE(5, 5)
$prototype=static void setDefaultCaCertificates(const QList<QSslCertificate> &certificates)
$staticMethod=|void|setDefaultCaCertificates|const QList<QSslCertificate> &

$prototype=static QList<QSslCertificate> defaultCaCertificates()
$staticMethod=|QList<QSslCertificate>|defaultCaCertificates|

$prototype=static QList<QSslCertificate> systemCaCertificates()
$staticMethod=|QList<QSslCertificate>|systemCaCertificates|
%% #endif // QT_DEPRECATED_SINCE(5, 5)

$prototype=bool waitForConnected(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForEncrypted(int msecs = 30000)
$method=|bool|waitForEncrypted|int=30000

$prototype=bool waitForReadyRead(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForReadyRead|int=30000

$prototype=bool waitForBytesWritten(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForBytesWritten|int=30000

$prototype=bool waitForDisconnected(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForDisconnected|int=30000

$prototype=QList<QSslError> sslErrors() const
$method=|QList<QSslError>|sslErrors|

$prototype=static bool supportsSsl()
$staticMethod=|bool|supportsSsl|

$prototype=static long sslLibraryVersionNumber()
$staticMethod=|long|sslLibraryVersionNumber|

$prototype=static QString sslLibraryVersionString()
$staticMethod=|QString|sslLibraryVersionString|

$prototype=static long sslLibraryBuildVersionNumber()
$staticMethod=5,4,0|long|sslLibraryBuildVersionNumber|

$prototype=static QString sslLibraryBuildVersionString()
$staticMethod=5,4,0|QString|sslLibraryBuildVersionString|

$prototype=void ignoreSslErrors(const QList<QSslError> &errors)
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=void ignoreSslErrors() (slot)
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors(const QList<QSslError> &errors)
//[2]void ignoreSslErrors() (slot)

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
$addMethod=ignoreSslErrors

$prototype=void startClientEncryption() (slot)
$method=|void|startClientEncryption|

$prototype=void startServerEncryption() (slot)
$method=|void|startServerEncryption|

$prototype=qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

$prototype=qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE (protected)

$beginSignals
$signal=|encrypted()
$signal=|encryptedBytesWritten(qint64)
$signal=|modeChanged(QSslSocket::SslMode)
$signal=|peerVerifyError(QSslError)
$signal=5,5,0|preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)
$signal=|sslErrors(QList<QSslError>)
$endSignals

#pragma ENDDUMP
