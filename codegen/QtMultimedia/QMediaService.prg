$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTROL
#endif

CLASS QMediaService INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD releaseControl
   METHOD requestControl

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void releaseControl(QMediaControl * control) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_RELEASECONTROL )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaControl * par1 = (QMediaControl *) _qt5xhb_itemGetPtr(1);
    obj->releaseControl ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QMediaControl * requestControl(const char * interface) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_REQUESTCONTROL )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaControl * ptr = obj->requestControl ( PCONSTCHAR(1) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTROL" );
  }
}




#pragma ENDDUMP
