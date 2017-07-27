$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEBRIDGE
#endif

CLASS QAccessibleBridgePlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QAccessibleBridge *create(const QString &key) = 0
*/
$method=|QAccessibleBridge *|create|const QString &

#pragma ENDDUMP
