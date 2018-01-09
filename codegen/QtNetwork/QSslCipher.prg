%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSslCipher

   DATA pointer
   DATA self_destruction INIT .F.

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
   METHOD usedBits

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

$prototype=QSslCipher ()
$internalConstructor=|new1|

$prototype=QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
$internalConstructor=|new2|const QString &,QSsl::SslProtocol

$prototype=QSslCipher ( const QSslCipher & other )
$internalConstructor=|new3|const QSslCipher &

//[1]QSslCipher ()
//[2]QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
//[3]QSslCipher ( const QSslCipher & other )

HB_FUNC_STATIC( QSSLCIPHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslCipher_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QSslCipher_new2();
  }
  else if( ISNUMPAR(1) && ISQSSLCIPHER(1) )
  {
    QSslCipher_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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

$extraMethods

#pragma ENDDUMP
