$header

#include "hbclass.ch"

CLASS QAmbientLightReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lightLevel
   METHOD setLightLevel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
LightLevel lightLevel() const
*/
HB_FUNC_STATIC( QAMBIENTLIGHTREADING_LIGHTLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lightLevel () );
  }
#endif
}


/*
void setLightLevel(LightLevel lightLevel)
*/
HB_FUNC_STATIC( QAMBIENTLIGHTREADING_SETLIGHTLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientLightReading * obj = (QAmbientLightReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLightLevel ( (QAmbientLightReading::LightLevel) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
