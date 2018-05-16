%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_SSL
%% #endif // QT_NO_SSL

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete

   METHOD authenticationMethod
   METHOD encryptionMethod
   METHOD isNull
   METHOD keyExchangeMethod
   METHOD name
   METHOD protocol
   METHOD protocolString
   METHOD supportedBits
   METHOD swap
   METHOD usedBits

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSslCipher()
$internalConstructor=|new1|

$prototype=explicit QSslCipher(const QString &name)
$internalConstructor=5,3,0|new2|const QString &

$prototype=QSslCipher( const QString & name, QSsl::SslProtocol protocol )
$internalConstructor=|new3|const QString &,QSsl::SslProtocol

$prototype=QSslCipher( const QSslCipher & other )
$internalConstructor=|new4|const QSslCipher &

//[1]QSslCipher()
//[2]explicit QSslCipher(const QString &name)
//[3]QSslCipher( const QString & name, QSsl::SslProtocol protocol )
//[4]QSslCipher( const QSslCipher & other )

HB_FUNC_STATIC( QSSLCIPHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslCipher_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSslCipher_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QSslCipher_new3();
  }
  else if( ISNUMPAR(1) && ISQSSLCIPHER(1) )
  {
    QSslCipher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslCipher()
$deleteMethod

$prototype=QString authenticationMethod () const
$method=|QString|authenticationMethod|

$prototype=QString encryptionMethod () const
$method=|QString|encryptionMethod|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QString keyExchangeMethod () const
$method=|QString|keyExchangeMethod|

$prototype=QString name () const
$method=|QString|name|

$prototype=QSsl::SslProtocol protocol () const
$method=|QSsl::SslProtocol|protocol|

$prototype=QString protocolString () const
$method=|QString|protocolString|

$prototype=int supportedBits () const
$method=|int|supportedBits|

$prototype=int usedBits () const
$method=|int|usedBits|

$prototype=void swap(QSslCipher &other) Q_DECL_NOTHROW
$method=|void|swap|QSslCipher &

$extraMethods

#pragma ENDDUMP
