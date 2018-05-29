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

$beginClass

   METHOD new
   METHOD delete

   METHOD algorithm
   METHOD clear
   METHOD handle
   METHOD isNull
   METHOD length
   METHOD swap
   METHOD toDer
   METHOD toPem
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSslKey ()
$internalConstructor=|new1|

$prototype=QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
$internalConstructor=|new2|const QByteArray &,QSsl::KeyAlgorithm,QSsl::EncodingFormat=QSsl::Pem,QSsl::KeyType=QSsl::PrivateKey,const QByteArray &=QByteArray()

$prototype=QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
$internalConstructor=|new3|QIODevice *,QSsl::KeyAlgorithm,QSsl::EncodingFormat=QSsl::Pem,QSsl::KeyType=QSsl::PrivateKey,const QByteArray &=QByteArray()

$prototype=explicit QSslKey(Qt::HANDLE handle, QSsl::KeyType type = QSsl::PrivateKey)
$internalConstructor=|new4|Qt::HANDLE,QSsl::KeyType=QSsl::PrivateKey

$prototype=QSslKey ( const QSslKey & other )
$internalConstructor=|new5|const QSslKey &

//[1]QSslKey()
//[2]QSslKey( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat format = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[3]QSslKey( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat format = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[4]explicit QSslKey(Qt::HANDLE handle, QSsl::KeyType type = QSsl::PrivateKey)
//[5]QSslKey( const QSslKey & other )

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
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QSslKey_new4();
  }
  else if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    QSslKey_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslKey()
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

$prototype=void swap(QSslKey &other) Q_DECL_NOTHROW
$method=|void|swap|QSslKey &

$prototype=Qt::HANDLE handle() const
$method=|Qt::HANDLE|handle|

$extraMethods

#pragma ENDDUMP
