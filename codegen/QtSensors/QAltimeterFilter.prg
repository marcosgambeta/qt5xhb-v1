$header

#include "hbclass.ch"

CLASS QAltimeterFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual bool filter(QAltimeterReading *reading) = 0
*/
HB_FUNC_STATIC( QALTIMETERFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeterFilter * obj = (QAltimeterFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAltimeterReading * par1 = (QAltimeterReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}

#pragma ENDDUMP
