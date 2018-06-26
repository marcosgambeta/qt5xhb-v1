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

$beginClassFrom=

   METHOD new
   METHOD delete

   METHOD certificate
   METHOD error
   METHOD errorString
   METHOD swap

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSslError ()
$internalConstructor=|new1|

$prototype=QSslError ( SslError error )
$internalConstructor=|new2|QSslError::SslError

$prototype=QSslError ( SslError error, const QSslCertificate & certificate )
$internalConstructor=|new3|QSslError::SslError,const QSslCertificate &

$prototype=QSslError ( const QSslError & other )
$internalConstructor=|new4|const QSslError &

//[1]QSslError ()
//[2]QSslError ( SslError error )
//[3]QSslError ( SslError error, const QSslCertificate & certificate )
//[4]QSslError ( const QSslError & other )

HB_FUNC_STATIC( QSSLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslError_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslError_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSSLCERTIFICATE(2) )
  {
    QSslError_new3();
  }
  else if( ISNUMPAR(1) && ISQSSLERROR(1) )
  {
    QSslError_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslError()
$deleteMethod

$prototype=QSslCertificate certificate () const
$method=|QSslCertificate|certificate|

$prototype=SslError error () const
$method=|QSslError::SslError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=void swap(QSslError &other) Q_DECL_NOTHROW
$method=|void|swap|QSslError &

$extraMethods

#pragma ENDDUMP
