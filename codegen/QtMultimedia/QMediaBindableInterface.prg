$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaBindableInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD mediaObject

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
virtual QMediaObject * mediaObject() const = 0
*/
HB_FUNC_STATIC( QMEDIABINDABLEINTERFACE_MEDIAOBJECT )
{
  QMediaBindableInterface * obj = (QMediaBindableInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}



$extraMethods

#pragma ENDDUMP
