/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEENCODERSETTINGS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QCameraImageCapture INHERIT QObject,QMediaBindableInterface

   DATA class_id INIT Class_Id_QCameraImageCapture
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD availability
   METHOD bufferFormat
   METHOD captureDestination
   METHOD encodingSettings
   METHOD error
   METHOD errorString
   METHOD imageCodecDescription
   METHOD isAvailable
   METHOD isCaptureDestinationSupported
   METHOD isReadyForCapture
   METHOD mediaObject
   METHOD setBufferFormat
   METHOD setCaptureDestination
   METHOD setEncodingSettings
   METHOD supportedBufferFormats
   METHOD supportedImageCodecs
   METHOD supportedResolutions
   METHOD cancelCapture
   METHOD capture
   METHOD onBufferFormatChanged
   METHOD onCaptureDestinationChanged
   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageCapture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraImageCapture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraImageCapture>
#endif

/*
QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = 0)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_NEW )
{
  QMediaObject * par1 = (QMediaObject *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QCameraImageCapture * o = new QCameraImageCapture ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_DELETE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QtMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_AVAILABILITY )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability (  ) );
  }
}


/*
QVideoFrame::PixelFormat bufferFormat() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_BUFFERFORMAT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferFormat (  ) );
  }
}


/*
CaptureDestinations captureDestination() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CAPTUREDESTINATION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->captureDestination (  ) );
  }
}


/*
QImageEncoderSettings encodingSettings() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ENCODINGSETTINGS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings * ptr = new QImageEncoderSettings( obj->encodingSettings (  ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGEENCODERSETTINGS" );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ERROR )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ERRORSTRING )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QString imageCodecDescription(const QString & codec) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_IMAGECODECDESCRIPTION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->imageCodecDescription ( par1 ).toLatin1().data() );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISAVAILABLE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAvailable (  ) );
  }
}


/*
bool isCaptureDestinationSupported(CaptureDestinations destination) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISCAPTUREDESTINATIONSUPPORTED )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isCaptureDestinationSupported (  (QCameraImageCapture::CaptureDestinations) par1 ) );
  }
}


/*
bool isReadyForCapture() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISREADYFORCAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadyForCapture (  ) );
  }
}


/*
virtual QMediaObject * mediaObject() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_MEDIAOBJECT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject (  );
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
void setBufferFormat(const QVideoFrame::PixelFormat format)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETBUFFERFORMAT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBufferFormat (  (QVideoFrame::PixelFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCaptureDestination(CaptureDestinations destination)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETCAPTUREDESTINATION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaptureDestination (  (QCameraImageCapture::CaptureDestinations) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingSettings(const QImageEncoderSettings & settings)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETENCODINGSETTINGS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings * par1 = (QImageEncoderSettings *) _qt5xhb_itemGetPtr(1);
    obj->setEncodingSettings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDBUFFERFORMATS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats (  );
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


/*
QStringList supportedImageCodecs() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDIMAGECODECS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedImageCodecs (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDRESOLUTIONS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings par1 = ISNIL(1)? QImageEncoderSettings() : *(QImageEncoderSettings *) _qt5xhb_itemGetPtr(1);
    bool par2;
    QList<QSize> list = obj->supportedResolutions ( par1, &par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
    hb_storl( par2, 2 );
  }
}



/*
void cancelCapture()
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CANCELCAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelCapture (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int capture(const QString & file = QString())
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
    hb_retni( obj->capture ( par1 ) );
  }
}




#pragma ENDDUMP
