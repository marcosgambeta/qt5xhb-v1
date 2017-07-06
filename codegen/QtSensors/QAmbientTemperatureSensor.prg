$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAMBIENTTEMPERATUREREADING
#endif

CLASS QAmbientTemperatureSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QAmbientTemperatureSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATURESENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureSensor * o = new QAmbientTemperatureSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QAmbientTemperatureReading *reading() const
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATURESENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureSensor * obj = (QAmbientTemperatureSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAmbientTemperatureReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QAMBIENTTEMPERATUREREADING" );
  }
#endif
}

#pragma ENDDUMP
