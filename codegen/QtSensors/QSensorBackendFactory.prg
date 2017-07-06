$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORBACKEND
#endif

CLASS QSensorBackendFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD createBackend

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
virtual QSensorBackend *createBackend(QSensor *sensor) = 0
*/
HB_FUNC_STATIC( QSENSORBACKENDFACTORY_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackendFactory * obj = (QSensorBackendFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensor * par1 = (QSensor *) _qt5xhb_itemGetPtr(1);
    QSensorBackend * ptr = obj->createBackend ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QSENSORBACKEND" );
  }
#endif
}

$extraMethods

#pragma ENDDUMP
