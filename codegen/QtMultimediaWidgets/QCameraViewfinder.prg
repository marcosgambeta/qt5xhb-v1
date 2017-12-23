$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QCameraViewfinder INHERIT QVideoWidget

   METHOD new
   METHOD delete
   METHOD mediaObject

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraViewfinder(QWidget * parent = 0)
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=virtual QMediaObject * mediaObject() const
$virtualMethod=|QMediaObject *|mediaObject|

#pragma ENDDUMP
