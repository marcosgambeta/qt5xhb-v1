$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIRPROXIMITYREADING
#endif

CLASS QIRProximitySensor INHERIT QSensor

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
QIRProximitySensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QIRPROXIMITYSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximitySensor * o = new QIRProximitySensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QIRProximityReading *reading() const
*/
HB_FUNC_STATIC( QIRPROXIMITYSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximitySensor * obj = (QIRProximitySensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIRProximityReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QIRPROXIMITYREADING" );
  }
#endif
}

#pragma ENDDUMP
