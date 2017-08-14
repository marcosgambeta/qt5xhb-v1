$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
#endif

CLASS QMediaServiceProviderPlugin INHERIT QObject,QMediaServiceProviderFactoryInterface

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QMediaService * create(const QString & key) = 0
*/
$method=|QMediaService *|create|const QString &

/*
virtual void release(QMediaService * service) = 0
*/
$method=|void|release|QMediaService *

#pragma ENDDUMP
