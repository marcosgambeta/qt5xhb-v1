$header

#include "hbclass.ch"

CLASS QAmbientTemperatureFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual bool filter(QAmbientTemperatureReading *reading) = 0
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATUREFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureFilter * obj = (QAmbientTemperatureFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAmbientTemperatureReading * par1 = (QAmbientTemperatureReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}

#pragma ENDDUMP
