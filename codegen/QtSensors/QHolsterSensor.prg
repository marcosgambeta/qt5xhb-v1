$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOLSTERREADING
#endif

CLASS QHolsterSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

/*
QHolsterSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QHOLSTERSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterSensor * o = new QHolsterSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QHolsterReading *reading() const
*/
HB_FUNC_STATIC( QHOLSTERSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QHolsterSensor * obj = (QHolsterSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHolsterReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QHOLSTERREADING" );
  }
#endif
}

#pragma ENDDUMP
