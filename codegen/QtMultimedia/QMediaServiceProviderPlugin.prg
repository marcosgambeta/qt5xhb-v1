$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
#endif

CLASS QMediaServiceProviderPlugin INHERIT QObject,QMediaServiceProviderFactoryInterface

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QMediaService * create(const QString & key) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_CREATE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaService * ptr = obj->create ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIASERVICE" );
  }
}


/*
virtual void release(QMediaService * service) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_RELEASE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaService * par1 = (QMediaService *) _qt5xhb_itemGetPtr(1);
    obj->release ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
