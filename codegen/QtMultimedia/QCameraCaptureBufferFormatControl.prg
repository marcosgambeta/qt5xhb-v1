$header

#include "hbclass.ch"

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD bufferFormat
   METHOD setBufferFormat
   METHOD supportedBufferFormats

   METHOD onBufferFormatChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QVideoFrame::PixelFormat bufferFormat() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_BUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferFormat () );
  }
}


/*
virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SETBUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferFormat ( (QVideoFrame::PixelFormat) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SUPPORTEDBUFFERFORMATS )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
