$header

#include "hbclass.ch"

CLASS QSensorChangesInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD sensorsChanged

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
virtual void sensorsChanged() = 0
*/
HB_FUNC_STATIC( QSENSORCHANGESINTERFACE_SENSORSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorChangesInterface * obj = (QSensorChangesInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorsChanged ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$extraMethods

#pragma ENDDUMP
