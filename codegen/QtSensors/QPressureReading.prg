$header

#include "hbclass.ch"

CLASS QPressureReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD pressure
   METHOD setPressure

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal pressure() const
*/
HB_FUNC_STATIC( QPRESSUREREADING_PRESSURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureReading * obj = (QPressureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->pressure () );
  }
#endif
}


/*
void setPressure(qreal pressure)
*/
HB_FUNC_STATIC( QPRESSUREREADING_SETPRESSURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QPressureReading * obj = (QPressureReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPressure ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
