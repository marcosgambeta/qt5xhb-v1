$header

#include "hbclass.ch"

CLASS QLightReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lux
   METHOD setLux

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
qreal lux() const
*/
HB_FUNC_STATIC( QLIGHTREADING_LUX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightReading * obj = (QLightReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->lux () );
  }
#endif
}


/*
void setLux(qreal lux)
*/
HB_FUNC_STATIC( QLIGHTREADING_SETLUX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightReading * obj = (QLightReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLux ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
