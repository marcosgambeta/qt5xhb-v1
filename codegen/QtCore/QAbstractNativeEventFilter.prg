$header

#include "hbclass.ch"

CLASS QAbstractNativeEventFilter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD nativeEventFilter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool nativeEventFilter(const QByteArray & eventType, void * message, long * result) = 0
*/
$virtualMethod=|bool|nativeEventFilter|const QByteArray &,void *,long *

#pragma ENDDUMP
