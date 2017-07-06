$header

#include "hbclass.ch"

CLASS QMagnetometerReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD x
   METHOD setX
   METHOD y
   METHOD setY
   METHOD z
   METHOD setZ
   METHOD calibrationLevel
   METHOD setCalibrationLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal x() const
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->x () );
  }
#endif
}


/*
void setX(qreal x)
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_SETX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->y () );
  }
#endif
}


/*
void setY(qreal y)
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_SETY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->z () );
  }
#endif
}


/*
void setZ(qreal z)
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_SETZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZ ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal calibrationLevel() const
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_CALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->calibrationLevel () );
  }
#endif
}


/*
void setCalibrationLevel(qreal calibrationLevel)
*/
HB_FUNC_STATIC( QMAGNETOMETERREADING_SETCALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometerReading * obj = (QMagnetometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCalibrationLevel ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
