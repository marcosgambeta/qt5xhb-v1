$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QGenericPluginFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QObject * create ( const QString & key, const QString & specification )
*/
HB_FUNC_STATIC( QGENERICPLUGINFACTORY_CREATE )
{
  QGenericPluginFactory * obj = (QGenericPluginFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->create ( PQSTRING(1), PQSTRING(2) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QStringList keys ()
*/
HB_FUNC_STATIC( QGENERICPLUGINFACTORY_KEYS )
{
  QGenericPluginFactory * obj = (QGenericPluginFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

$extraMethods

#pragma ENDDUMP
