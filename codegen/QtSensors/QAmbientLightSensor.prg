$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAMBIENTLIGHTREADING
#endif

CLASS QAmbientLightSensor INHERIT QSensor

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
QAmbientLightSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QAMBIENTLIGHTSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightSensor * o = new QAmbientLightSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QAmbientLightReading *reading() const
*/
HB_FUNC_STATIC( QAMBIENTLIGHTSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightSensor * obj = (QAmbientLightSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAmbientLightReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QAMBIENTLIGHTREADING" );
  }
#endif
}

#pragma ENDDUMP
