$header

#include "hbclass.ch"

CLASS QIRProximityReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD reflectance
   METHOD setReflectance

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal reflectance() const
*/
HB_FUNC_STATIC( QIRPROXIMITYREADING_REFLECTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->reflectance () );
  }
#endif
}


/*
void setReflectance(qreal reflectance)
*/
HB_FUNC_STATIC( QIRPROXIMITYREADING_SETREFLECTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityReading * obj = (QIRProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReflectance ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
