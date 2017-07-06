$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEBRIDGE
#endif

CLASS QAccessibleBridgePlugin INHERIT QObject

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
virtual QAccessibleBridge *create(const QString &key) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEBRIDGEPLUGIN_CREATE )
{
  QAccessibleBridgePlugin * obj = (QAccessibleBridgePlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleBridge * ptr = obj->create ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEBRIDGE" );
  }
}



#pragma ENDDUMP
