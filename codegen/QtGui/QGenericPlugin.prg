$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QGenericPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QObject * create ( const QString & key, const QString & specification ) = 0
*/
HB_FUNC_STATIC( QGENERICPLUGIN_CREATE )
{
  QGenericPlugin * obj = (QGenericPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->create ( PQSTRING(1), PQSTRING(2) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

#pragma ENDDUMP
