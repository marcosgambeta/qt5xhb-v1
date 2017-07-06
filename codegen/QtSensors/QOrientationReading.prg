$header

#include "hbclass.ch"

CLASS QOrientationReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD orientation
   METHOD setOrientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
Orientation orientation() const
*/
HB_FUNC_STATIC( QORIENTATIONREADING_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationReading * obj = (QOrientationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
#endif
}


/*
void setOrientation(Orientation orientation)
*/
HB_FUNC_STATIC( QORIENTATIONREADING_SETORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationReading * obj = (QOrientationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOrientation ( (QOrientationReading::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
