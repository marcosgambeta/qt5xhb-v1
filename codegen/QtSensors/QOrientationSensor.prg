$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QORIENTATIONREADING
#endif

CLASS QOrientationSensor INHERIT QSensor

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
QOrientationSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QORIENTATIONSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationSensor * o = new QOrientationSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QOrientationReading *reading() const
*/
HB_FUNC_STATIC( QORIENTATIONSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QOrientationSensor * obj = (QOrientationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOrientationReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QORIENTATIONREADING" );
  }
#endif
}



#pragma ENDDUMP
