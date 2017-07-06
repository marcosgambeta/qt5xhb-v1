$header

#include "hbclass.ch"

CLASS QCompassReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD azimuth
   METHOD setAzimuth
   METHOD calibrationLevel
   METHOD setCalibrationLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal azimuth() const
*/
HB_FUNC_STATIC( QCOMPASSREADING_AZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->azimuth () );
  }
#endif
}


/*
void setAzimuth(qreal azimuth)
*/
HB_FUNC_STATIC( QCOMPASSREADING_SETAZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAzimuth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal calibrationLevel() const
*/
HB_FUNC_STATIC( QCOMPASSREADING_CALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->calibrationLevel () );
  }
#endif
}


/*
void setCalibrationLevel(qreal calibrationLevel)
*/
HB_FUNC_STATIC( QCOMPASSREADING_SETCALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCalibrationLevel ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
