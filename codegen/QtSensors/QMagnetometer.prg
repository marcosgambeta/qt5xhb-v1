$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMAGNETOMETERREADING
#endif

CLASS QMagnetometer INHERIT QSensor

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnGeoValues
   METHOD setReturnGeoValues

   METHOD onReturnGeoValuesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QMagnetometer(QObject *parent = 0)
*/
HB_FUNC_STATIC( QMAGNETOMETER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * o = new QMagnetometer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QMagnetometerReading *reading() const
*/
HB_FUNC_STATIC( QMAGNETOMETER_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMagnetometerReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QMAGNETOMETERREADING" );
  }
#endif
}


/*
bool returnGeoValues() const
*/
HB_FUNC_STATIC( QMAGNETOMETER_RETURNGEOVALUES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->returnGeoValues () );
  }
#endif
}


/*
void setReturnGeoValues(bool returnGeoValues)
*/
HB_FUNC_STATIC( QMAGNETOMETER_SETRETURNGEOVALUES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReturnGeoValues ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
