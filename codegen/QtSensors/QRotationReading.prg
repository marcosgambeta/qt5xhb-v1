$header

#include "hbclass.ch"

CLASS QRotationReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD x
   METHOD y
   METHOD z
   METHOD setFromEuler

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal x() const
*/
HB_FUNC_STATIC( QROTATIONREADING_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->x () );
  }
#endif
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QROTATIONREADING_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->y () );
  }
#endif
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QROTATIONREADING_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->z () );
  }
#endif
}


/*
void setFromEuler(qreal x, qreal y, qreal z)
*/
HB_FUNC_STATIC( QROTATIONREADING_SETFROMEULER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFromEuler ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
