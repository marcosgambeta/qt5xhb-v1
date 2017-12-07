$header

#include "hbclass.ch"

CLASS QAbstractNativeEventFilter INHERIT QObject

   METHOD delete
   METHOD nativeEventFilter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool nativeEventFilter(const QByteArray & eventType, void * message, long * result) = 0
$virtualMethod=|bool|nativeEventFilter|const QByteArray &,void *,long *

#pragma ENDDUMP
