$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QALTIMETERREADING
#endif

CLASS QAltimeter INHERIT QSensor

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
QAltimeter(QObject *parent = 0)
*/
HB_FUNC_STATIC( QALTIMETER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeter * o = new QAltimeter ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QAltimeterReading *reading() const
*/
HB_FUNC_STATIC( QALTIMETER_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAltimeter * obj = (QAltimeter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAltimeterReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QALTIMETERREADING" );
  }
#endif
}

#pragma ENDDUMP
