$header

#include "hbclass.ch"

CLASS QRotationFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual bool filter(QRotationReading *reading) = 0
*/
HB_FUNC_STATIC( QROTATIONFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationFilter * obj = (QRotationFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRotationReading * par1 = (QRotationReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}



#pragma ENDDUMP
