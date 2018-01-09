%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QSslKey

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD algorithm
   METHOD clear
   METHOD isNull
   METHOD length
   METHOD toDer
   METHOD toPem
   METHOD type

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

$prototype=QSslKey ()
$internalConstructor=|new1|

$prototype=QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
$internalConstructor=|new2|const QByteArray &,QSsl::KeyAlgorithm,QSsl::EncodingFormat=QSsl::Pem,QSsl::KeyType=QSsl::PrivateKey,const QByteArray &=QByteArray()

$prototype=QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
$internalConstructor=|new3|QIODevice *,QSsl::KeyAlgorithm,QSsl::EncodingFormat=QSsl::Pem,QSsl::KeyType=QSsl::PrivateKey,const QByteArray &=QByteArray()

$prototype=QSslKey ( const QSslKey & other )
$internalConstructor=|new4|const QSslKey &

//[1]QSslKey ()
//[2]QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[3]QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[4]QSslKey ( const QSslKey & other )

HB_FUNC_STATIC( QSSLKEY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslKey_new1();
  }
  else if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    QSslKey_new2();
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    QSslKey_new3();
  }
  else if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    QSslKey_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSsl::KeyAlgorithm algorithm () const
$method=|QSsl::KeyAlgorithm|algorithm|

$prototype=void clear ()
$method=|void|clear|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=int length () const
$method=|int|length|

$prototype=QByteArray toDer ( const QByteArray & passPhrase = QByteArray() ) const
$method=|QByteArray|toDer|const QByteArray &=QByteArray()

$prototype=QByteArray toPem ( const QByteArray & passPhrase = QByteArray() ) const
$method=|QByteArray|toPem|const QByteArray &=QByteArray()

$prototype=QSsl::KeyType type () const
$method=|QSsl::KeyType|type|

$extraMethods

#pragma ENDDUMP
