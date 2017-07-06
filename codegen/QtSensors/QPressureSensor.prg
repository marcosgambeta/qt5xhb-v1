$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRESSUREREADING
#endif

CLASS QPressureSensor INHERIT QSensor

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
QPressureSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPRESSURESENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureSensor * o = new QPressureSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QPressureReading *reading() const
*/
HB_FUNC_STATIC( QPRESSURESENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureSensor * obj = (QPressureSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPressureReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QPRESSUREREADING" );
  }
#endif
}



#pragma ENDDUMP
