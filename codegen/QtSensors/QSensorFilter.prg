$header

#include "hbclass.ch"

CLASS QSensorFilter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD filter

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
virtual bool filter(QSensorReading *reading) = 0
*/
HB_FUNC_STATIC( QSENSORFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorFilter * obj = (QSensorFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorReading * par1 = (QSensorReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
