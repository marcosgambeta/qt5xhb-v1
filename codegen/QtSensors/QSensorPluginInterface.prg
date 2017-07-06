$header

#include "hbclass.ch"

CLASS QSensorPluginInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD registerSensors

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
virtual void registerSensors() = 0
*/
HB_FUNC_STATIC( QSENSORPLUGININTERFACE_REGISTERSENSORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorPluginInterface * obj = (QSensorPluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerSensors ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
