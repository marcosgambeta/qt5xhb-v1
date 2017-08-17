$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QSslKey

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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

/*
QSslKey ()
*/
$constructor=|new1|

/*
QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
$constructor=|new2|const QByteArray &,QSsl::KeyAlgorithm,QSsl::EncodingFormat=QSsl::Pem,QSsl::KeyType=QSsl::PrivateKey,const QByteArray &=QByteArray()

/*
QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
$constructor=|new3|QIODevice *,QSsl::KeyAlgorithm,QSsl::EncodingFormat=QSsl::Pem,QSsl::KeyType=QSsl::PrivateKey,const QByteArray &=QByteArray()

/*
QSslKey ( const QSslKey & other )
*/
$constructor=|new4|const QSslKey &

//[1]QSslKey ()
//[2]QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[3]QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[4]QSslKey ( const QSslKey & other )

HB_FUNC_STATIC( QSSLKEY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW1 );
  }
  else if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW2 );
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSsl::KeyAlgorithm algorithm () const
*/
$method=|QSsl::KeyAlgorithm|algorithm|

/*
void clear ()
*/
$method=|void|clear|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
int length () const
*/
$method=|int|length|

/*
QByteArray toDer ( const QByteArray & passPhrase = QByteArray() ) const
*/
$method=|QByteArray|toDer|const QByteArray &=QByteArray()

/*
QByteArray toPem ( const QByteArray & passPhrase = QByteArray() ) const
*/
$method=|QByteArray|toPem|const QByteArray &=QByteArray()

/*
QSsl::KeyType type () const
*/
$method=|QSsl::KeyType|type|

$extraMethods

#pragma ENDDUMP
