$header

#include "hbclass.ch"

CLASS QTiltReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD yRotation
   METHOD setYRotation
   METHOD xRotation
   METHOD setXRotation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal yRotation() const
*/
HB_FUNC_STATIC( QTILTREADING_YROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->yRotation () );
  }
#endif
}


/*
void setYRotation(qreal y)
*/
HB_FUNC_STATIC( QTILTREADING_SETYROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setYRotation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal xRotation() const
*/
HB_FUNC_STATIC( QTILTREADING_XROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->xRotation () );
  }
#endif
}


/*
void setXRotation(qreal x)
*/
HB_FUNC_STATIC( QTILTREADING_SETXROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setXRotation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
