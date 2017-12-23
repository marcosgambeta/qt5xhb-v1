$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
#endif

CLASS QMediaServiceProviderFactoryInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD release

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

$deleteMethod

$prototype=virtual QMediaService* create(QString const& key) = 0
$virtualMethod=|QMediaService *|create|QString const &

$prototype=virtual void release(QMediaService *service) = 0
$virtualMethod=|void|release|QMediaService *

$extraMethods

#pragma ENDDUMP
