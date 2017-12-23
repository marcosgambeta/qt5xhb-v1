$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEBRIDGE
#endif

CLASS QAccessibleBridgePlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAccessibleBridge *create(const QString &key) = 0
$virtualMethod=|QAccessibleBridge *|create|const QString &

#pragma ENDDUMP
