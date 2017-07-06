$header

#include "hbclass.ch"

CLASS QGyroscopeFilter INHERIT QSensorFilter

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
virtual bool filter(QGyroscopeReading *reading) = 0
*/
HB_FUNC_STATIC( QGYROSCOPEFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeFilter * obj = (QGyroscopeFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGyroscopeReading * par1 = (QGyroscopeReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}

#pragma ENDDUMP
