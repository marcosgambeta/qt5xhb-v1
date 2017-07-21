$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

CLASS QStylePlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QStyle *create(const QString &key) = 0
*/
HB_FUNC_STATIC( QSTYLEPLUGIN_CREATE )
{
  QStylePlugin * obj = (QStylePlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStyle * ptr = obj->create ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}

#pragma ENDDUMP
