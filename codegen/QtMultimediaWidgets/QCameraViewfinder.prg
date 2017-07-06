$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QCameraViewfinder INHERIT QVideoWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mediaObject

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCameraViewfinder(QWidget * parent = 0)
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDER_NEW )
{
  QCameraViewfinder * o = new QCameraViewfinder ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual QMediaObject * mediaObject() const
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDER_MEDIAOBJECT )
{
  QCameraViewfinder * obj = (QCameraViewfinder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}

#pragma ENDDUMP
