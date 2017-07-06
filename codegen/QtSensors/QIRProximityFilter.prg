$header

#include "hbclass.ch"

CLASS QIRProximityFilter INHERIT QSensorFilter

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
virtual bool filter(QIRProximityReading *reading) = 0
*/
HB_FUNC_STATIC( QIRPROXIMITYFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityFilter * obj = (QIRProximityFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIRProximityReading * par1 = (QIRProximityReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}

#pragma ENDDUMP
