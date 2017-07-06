$header

#include "hbclass.ch"

CLASS QHolsterReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD holstered
   METHOD setHolstered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
bool holstered() const
*/
HB_FUNC_STATIC( QHOLSTERREADING_HOLSTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterReading * obj = (QHolsterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->holstered () );
  }
#endif
}


/*
void setHolstered(bool holstered)
*/
HB_FUNC_STATIC( QHOLSTERREADING_SETHOLSTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterReading * obj = (QHolsterReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHolstered ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
