$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKACCESSMANAGER
#endif

CLASS QDeclarativeNetworkAccessManagerFactory

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
virtual QNetworkAccessManager * create ( QObject * parent ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVENETWORKACCESSMANAGERFACTORY_CREATE )
{
  QDeclarativeNetworkAccessManagerFactory * obj = (QDeclarativeNetworkAccessManagerFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      QNetworkAccessManager * ptr = obj->create ( PQOBJECT(1) );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
