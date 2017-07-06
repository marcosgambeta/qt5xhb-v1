$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessiblePlugin INHERIT QObject

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
virtual QAccessibleInterface *create(const QString &key, QObject *object) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEPLUGIN_CREATE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->create ( PQSTRING(1), PQOBJECT(2) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}



#pragma ENDDUMP
