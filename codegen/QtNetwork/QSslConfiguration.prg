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
#endif

CLASS QSslConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD caCertificates
   METHOD ciphers
   METHOD isNull
   METHOD localCertificate
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
   METHOD defaultConfiguration
   METHOD setDefaultConfiguration

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSslKey>
#include <QSslCipher>

$prototype=QSslConfiguration ()
$internalConstructor=|new1|

$prototype=QSslConfiguration ( const QSslConfiguration & other )
$internalConstructor=|new2|const QSslConfiguration &

//[1]QSslConfiguration ()
//[2]QSslConfiguration ( const QSslConfiguration & other )

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslConfiguration_new1();
  }
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    QSslConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QSslCertificate> caCertificates () const
$method=|QList<QSslCertificate>|caCertificates|

$prototype=QList<QSslCipher> ciphers () const
$method=|QList<QSslCipher>|ciphers|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QSslCertificate localCertificate () const
$method=|QSslCertificate|localCertificate|

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
$method=|void|setCiphers|const QList<QSslCipher> &

$prototype=void setLocalCertificate ( const QSslCertificate & certificate )
$method=|void|setLocalCertificate|const QSslCertificate &

$prototype=void setPeerVerifyDepth ( int depth )
$method=|void|setPeerVerifyDepth|int

$prototype=void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=void setPrivateKey ( const QSslKey & key )
$method=|void|setPrivateKey|const QSslKey &

$prototype=void setProtocol ( QSsl::SslProtocol protocol )
$method=|void|setProtocol|QSsl::SslProtocol

$prototype=static QSslConfiguration defaultConfiguration ()
$staticMethod=|QSslConfiguration|defaultConfiguration|

$prototype=static void setDefaultConfiguration ( const QSslConfiguration & configuration )
$staticMethod=|void|setDefaultConfiguration|const QSslConfiguration &

$extraMethods

#pragma ENDDUMP
