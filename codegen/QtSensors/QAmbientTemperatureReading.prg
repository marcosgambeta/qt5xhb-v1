$header

#include "hbclass.ch"

CLASS QAmbientTemperatureReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD temperature
   METHOD setTemperature

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal temperature() const
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATUREREADING_TEMPERATURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureReading * obj = (QAmbientTemperatureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->temperature () );
  }
#endif
}


/*
void setTemperature(qreal temperature)
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATUREREADING_SETTEMPERATURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureReading * obj = (QAmbientTemperatureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTemperature ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
