$header

#include "hbclass.ch"

CLASS QProximityReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD close
   METHOD setClose

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
bool close() const
*/
HB_FUNC_STATIC( QPROXIMITYREADING_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityReading * obj = (QProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->close () );
  }
#endif
}


/*
void setClose(bool close)
*/
HB_FUNC_STATIC( QPROXIMITYREADING_SETCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximityReading * obj = (QProximityReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClose ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
