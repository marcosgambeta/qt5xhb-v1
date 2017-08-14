$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTROL
#endif

CLASS QMediaService INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD releaseControl
   METHOD requestControl

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void releaseControl(QMediaControl * control) = 0
*/
$method=|void|releaseControl|QMediaControl *

/*
virtual QMediaControl * requestControl(const char * interface) = 0
*/
$method=|QMediaControl *|requestControl|const char *

#pragma ENDDUMP
