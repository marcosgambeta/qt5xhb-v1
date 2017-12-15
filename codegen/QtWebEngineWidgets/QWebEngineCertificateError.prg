$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QWebEngineCertificateError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD error
   METHOD url
   METHOD isOverridable
   METHOD errorDescription

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QWebEngineCertificateError(int error, QUrl url, bool overridable, QString errorDescription)
$constructor=5,4,0|new|int,QUrl,bool,QString

$deleteMethod=5,4,0

$prototype=Error error() const
$method=5,4,0|QWebEngineCertificateError::Error|error|

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=bool isOverridable() const
$method=5,4,0|bool|isOverridable|

$prototype=QString errorDescription() const
$method=5,4,0|QString|errorDescription|

$extraMethods

#pragma ENDDUMP
