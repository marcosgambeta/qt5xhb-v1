$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QAccessibleImageInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD imageDescription
   METHOD imageSize

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
virtual QString imageDescription() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEIMAGEINTERFACE_IMAGEDESCRIPTION )
{
  QAccessibleImageInterface * obj = (QAccessibleImageInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->imageDescription () );
  }
}


/*
virtual QSize imageSize() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEIMAGEINTERFACE_IMAGESIZE )
{
  QAccessibleImageInterface * obj = (QAccessibleImageInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->imageSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

$extraMethods

#pragma ENDDUMP
