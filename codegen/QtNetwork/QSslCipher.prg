$header

#include "hbclass.ch"

CLASS QSslCipher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*
QSslCipher ()
*/
$constructor=|new1|

/*
QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
*/
$constructor=|new2|const QString &,QSsl::SslProtocol

/*
QSslCipher ( const QSslCipher & other )
*/
$constructor=|new3|const QSslCipher &

//[1]QSslCipher ()
//[2]QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
//[3]QSslCipher ( const QSslCipher & other )

HB_FUNC_STATIC( QSSLCIPHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSSLCIPHER(1) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString authenticationMethod () const
*/
$method=|QString|authenticationMethod|

/*
QString encryptionMethod () const
*/
$method=|QString|encryptionMethod|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QString keyExchangeMethod () const
*/
$method=|QString|keyExchangeMethod|

/*
QString name () const
*/
$method=|QString|name|

/*
QSsl::SslProtocol protocol () const
*/
$method=|QSsl::SslProtocol|protocol|

/*
QString protocolString () const
*/
$method=|QString|protocolString|

/*
int supportedBits () const
*/
$method=|int|supportedBits|

/*
int usedBits () const
*/
$method=|int|usedBits|

$extraMethods

#pragma ENDDUMP
