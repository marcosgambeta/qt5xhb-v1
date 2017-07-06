$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTILTREADING
#endif

CLASS QTiltSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD calibrate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QTiltSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTILTSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltSensor * o = new QTiltSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QTiltReading *reading() const
*/
HB_FUNC_STATIC( QTILTSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltSensor * obj = (QTiltSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTiltReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QTILTREADING" );
  }
#endif
}


/*
void calibrate()
*/
HB_FUNC_STATIC( QTILTSENSOR_CALIBRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltSensor * obj = (QTiltSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->calibrate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
