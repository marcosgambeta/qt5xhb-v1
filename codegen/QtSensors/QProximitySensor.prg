$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPROXIMITYREADING
#endif

CLASS QProximitySensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QProximitySensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPROXIMITYSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximitySensor * o = new QProximitySensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QProximityReading *reading() const
*/
HB_FUNC_STATIC( QPROXIMITYSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QProximitySensor * obj = (QProximitySensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QProximityReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QPROXIMITYREADING" );
  }
#endif
}



#pragma ENDDUMP
