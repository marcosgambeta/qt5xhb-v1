$header

#include "hbclass.ch"

CLASS QCompassFilter INHERIT QSensorFilter

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
virtual bool filter(QCompassReading *reading) = 0
*/
HB_FUNC_STATIC( QCOMPASSFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassFilter * obj = (QCompassFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCompassReading * par1 = (QCompassReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}

#pragma ENDDUMP
