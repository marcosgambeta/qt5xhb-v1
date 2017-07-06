$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPASSREADING
#endif

CLASS QCompass INHERIT QSensor

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
QCompass(QObject *parent = 0)
*/
HB_FUNC_STATIC( QCOMPASS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompass * o = new QCompass ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QCompassReading *reading() const
*/
HB_FUNC_STATIC( QCOMPASS_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompass * obj = (QCompass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCompassReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QCOMPASSREADING" );
  }
#endif
}

#pragma ENDDUMP
