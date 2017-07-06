$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGYROSCOPEREADING
#endif

CLASS QGyroscope INHERIT QSensor

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
QGyroscope(QObject *parent = 0)
*/
HB_FUNC_STATIC( QGYROSCOPE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscope * o = new QGyroscope ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QGyroscopeReading *reading() const
*/
HB_FUNC_STATIC( QGYROSCOPE_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscope * obj = (QGyroscope *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGyroscopeReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QGYROSCOPEREADING" );
  }
#endif
}

#pragma ENDDUMP
