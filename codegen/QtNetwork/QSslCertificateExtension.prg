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

CLASS QSslCertificateExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD isCritical
   METHOD isSupported
   METHOD name
   METHOD oid
   METHOD swap
   METHOD value

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

$prototype=QSslCertificateExtension()
$internalConstructor=|new1|

$prototype=QSslCertificateExtension(const QSslCertificateExtension &other)
$internalConstructor=|new2|const QSslCertificateExtension &

//[1]QSslCertificateExtension()
//[2]QSslCertificateExtension(const QSslCertificateExtension &other)

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslCertificateExtension_new1();
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATEEXTENSION(1) )
  {
    QSslCertificateExtension_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QSslCertificateExtension()
$deleteMethod

$prototype=void swap(QSslCertificateExtension &other) Q_DECL_NOTHROW
$method=|void|swap|QSslCertificateExtension &

$prototype=QString oid() const
$method=|QString|oid|

$prototype=QString name() const
$method=|QString|name|

$prototype=QVariant value() const
$method=|QVariant|value|

$prototype=bool isCritical() const
$method=|bool|isCritical|

$prototype=bool isSupported() const
$method=|bool|isSupported|

$extraMethods

#pragma ENDDUMP
