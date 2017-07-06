$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKACCESSMANAGER
#endif

CLASS QQmlNetworkAccessManagerFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

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
virtual QNetworkAccessManager * create(QObject * parent) = 0
*/
HB_FUNC_STATIC( QQMLNETWORKACCESSMANAGERFACTORY_CREATE )
{
  QQmlNetworkAccessManagerFactory * obj = (QQmlNetworkAccessManagerFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->create ( PQOBJECT(1) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}



$extraMethods

#pragma ENDDUMP
