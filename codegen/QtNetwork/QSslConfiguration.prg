%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% TODO:
%% #ifndef QT_NO_SSL
%% #endif  // QT_NO_SSL

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QSslKey>
#include <QtNetwork/QSslCipher>

$prototype=QSslConfiguration()
$internalConstructor=|new1|

$prototype=QSslConfiguration( const QSslConfiguration & other )
$internalConstructor=|new2|const QSslConfiguration &

//[1]QSslConfiguration()
//[2]QSslConfiguration( const QSslConfiguration & other )

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    QSslConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslConfiguration()
$deleteMethod

$prototype=void swap(QSslConfiguration &other) Q_DECL_NOTHROW
$method=|void|swap|QSslConfiguration &

$prototype=bool isNull() const
$method=|bool|isNull|

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

$prototype=QList<QSslCertificate> localCertificateChain() const
$method=5,1,0|QList<QSslCertificate>|localCertificateChain|

$prototype=void setLocalCertificateChain(const QList<QSslCertificate> &localChain)
$method=5,1,0|void|setLocalCertificateChain|const QList<QSslCertificate> &

$prototype=QSslCertificate localCertificate() const
$method=|QSslCertificate|localCertificate|

$prototype=void setLocalCertificate(const QSslCertificate &certificate)
$method=|void|setLocalCertificate|const QSslCertificate &

$prototype=QSslCertificate peerCertificate() const
$method=|QSslCertificate|peerCertificate|

$prototype=QList<QSslCertificate> peerCertificateChain() const
$method=|QList<QSslCertificate>|peerCertificateChain|

$prototype=QSslCipher sessionCipher() const
$method=|QSslCipher|sessionCipher|

$prototype=QSsl::SslProtocol sessionProtocol() const
$method=5,4,0|QSsl::SslProtocol|sessionProtocol|

$prototype=QSslKey privateKey() const
$method=|QSslKey|privateKey|

$prototype=void setPrivateKey(const QSslKey &key)
$method=|void|setPrivateKey|const QSslKey &

$prototype=QList<QSslCipher> ciphers() const
$method=|QList<QSslCipher>|ciphers|

$prototype=void setCiphers(const QList<QSslCipher> &ciphers)
$method=|void|setCiphers|const QList<QSslCipher> &

$prototype=static QList<QSslCipher> supportedCiphers()
$staticMethod=5,5,0|QList<QSslCipher>|supportedCiphers|

$prototype=QList<QSslCertificate> caCertificates() const
$method=|QList<QSslCertificate>|caCertificates|

$prototype=void setCaCertificates(const QList<QSslCertificate> &certificates)
$method=|void|setCaCertificates|const QList<QSslCertificate> &

$prototype=static QList<QSslCertificate> systemCaCertificates()
$staticMethod=5,5,0|QList<QSslCertificate>|systemCaCertificates|

$prototype=void setSslOption(QSsl::SslOption option, bool on)
$method=|void|setSslOption|QSsl::SslOption,bool

$prototype=bool testSslOption(QSsl::SslOption option) const
$method=|bool|testSslOption|QSsl::SslOption

$prototype=QByteArray sessionTicket() const
$method=5,2,0|QByteArray|sessionTicket|

$prototype=void setSessionTicket(const QByteArray &sessionTicket)
$method=5,2,0|void|setSessionTicket|const QByteArray &

$prototype=int sessionTicketLifeTimeHint() const
$method=5,2,0|int|sessionTicketLifeTimeHint|

$prototype=QSslKey ephemeralServerKey() const
$method=5,7,0|QSslKey|ephemeralServerKey|

$prototype=QVector<QSslEllipticCurve> ellipticCurves() const
%% TODO: implementar
%% $method=5,5,0|QVector<QSslEllipticCurve>|ellipticCurves|

$prototype=void setEllipticCurves(const QVector<QSslEllipticCurve> &curves)
%% TODO: implementar
%% $method=5,5,0|void|setEllipticCurves|const QVector<QSslEllipticCurve> &

$prototype=static QVector<QSslEllipticCurve> supportedEllipticCurves()
%% TODO: implementar
%% $staticMethod=|QVector<QSslEllipticCurve>|supportedEllipticCurves|

$prototype=QByteArray preSharedKeyIdentityHint() const
$method=5,8,0|QByteArray|preSharedKeyIdentityHint|

$prototype=void setPreSharedKeyIdentityHint(const QByteArray &hint)
$method=5,8,0|void|setPreSharedKeyIdentityHint|const QByteArray &

$prototype=QSslDiffieHellmanParameters diffieHellmanParameters() const
%% TODO: implementar
%% $method=5,8,0|QSslDiffieHellmanParameters|diffieHellmanParameters|

$prototype=void setDiffieHellmanParameters(const QSslDiffieHellmanParameters &dhparams)
%% TODO: implementar
%% $method=5,8,0|void|setDiffieHellmanParameters|const QSslDiffieHellmanParameters &

$prototype=static QSslConfiguration defaultConfiguration()
$staticMethod=|QSslConfiguration|defaultConfiguration|

$prototype=static void setDefaultConfiguration(const QSslConfiguration &configuration)
$staticMethod=|void|setDefaultConfiguration|const QSslConfiguration &

$prototype=void setAllowedNextProtocols(QList<QByteArray> protocols)
$method=5,3,0|void|setAllowedNextProtocols|QList<QByteArray>

$prototype=QList<QByteArray> allowedNextProtocols() const
$method=5,3,0|QList<QByteArray>|allowedNextProtocols|

$prototype=QByteArray nextNegotiatedProtocol() const
$method=5,3,0|QByteArray|nextNegotiatedProtocol|

$prototype=NextProtocolNegotiationStatus nextProtocolNegotiationStatus() const
$method=5,3,0|QSslConfiguration::NextProtocolNegotiationStatus|nextProtocolNegotiationStatus|

$extraMethods

#pragma ENDDUMP
