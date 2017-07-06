$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QROTATIONREADING
#endif

CLASS QRotationSensor INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD hasZ
   METHOD setHasZ

   METHOD onHasZChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QRotationSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * o = new QRotationSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QRotationReading *reading() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRotationReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QROTATIONREADING" );
  }
#endif
}


/*
bool hasZ() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_HASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasZ () );
  }
#endif
}


/*
void setHasZ(bool hasZ)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_SETHASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHasZ ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
