%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
#endif

CLASS QSslError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD certificate
   METHOD error
   METHOD errorString

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

$prototype=QSslError ()
$constructor=|new1|

$prototype=QSslError ( SslError error )
$constructor=|new2|QSslError::SslError

$prototype=QSslError ( SslError error, const QSslCertificate & certificate )
$constructor=|new3|QSslError::SslError,const QSslCertificate &

$prototype=QSslError ( const QSslError & other )
$constructor=|new4|const QSslError &

//[1]QSslError ()
//[2]QSslError ( SslError error )
//[3]QSslError ( SslError error, const QSslCertificate & certificate )
//[4]QSslError ( const QSslError & other )

HB_FUNC_STATIC( QSSLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSSLCERTIFICATE(2) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSSLERROR(1) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSslCertificate certificate () const
$method=|QSslCertificate|certificate|

$prototype=SslError error () const
$method=|QSslError::SslError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP
