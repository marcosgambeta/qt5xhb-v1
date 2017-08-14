$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QCameraViewfinder INHERIT QVideoWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mediaObject

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCameraViewfinder(QWidget * parent = 0)
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
virtual QMediaObject * mediaObject() const
*/
$method=|QMediaObject *|mediaObject|

#pragma ENDDUMP
