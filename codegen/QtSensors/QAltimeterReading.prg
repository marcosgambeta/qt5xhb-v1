$header

#include "hbclass.ch"

CLASS QAltimeterReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD altitude
   METHOD setAltitude

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal altitude() const
*/
HB_FUNC_STATIC( QALTIMETERREADING_ALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeterReading * obj = (QAltimeterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->altitude () );
  }
#endif
}


/*
void setAltitude(qreal altitude)
*/
HB_FUNC_STATIC( QALTIMETERREADING_SETALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeterReading * obj = (QAltimeterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAltitude ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
