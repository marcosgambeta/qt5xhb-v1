/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraImageCaptureSlots.h"


static SlotsQCameraImageCapture * s = NULL;

SlotsQCameraImageCapture::SlotsQCameraImageCapture(QObject *parent) : QObject(parent)
{
}

SlotsQCameraImageCapture::~SlotsQCameraImageCapture()
{
}

void SlotsQCameraImageCapture::bufferFormatChanged(QVideoFrame::PixelFormat format)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferFormatChanged(QVideoFrame::PixelFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutNI( NULL, (int) format );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void SlotsQCameraImageCapture::captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdestination = hb_itemPutNI( NULL, (int) destination );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdestination );
    hb_itemRelease( psender );
    hb_itemRelease( pdestination );
  }
}

void SlotsQCameraImageCapture::error(int id, QCameraImageCapture::Error error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QCameraImageCapture::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pid, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQCameraImageCapture::imageAvailable(int id, const QVideoFrame & buffer)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageAvailable(int,QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pbuffer = hb_itemPutPtr( NULL, (QVideoFrame *) &buffer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, pbuffer );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pbuffer );
  }
}

void SlotsQCameraImageCapture::imageCaptured(int id, const QImage & preview)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageCaptured(int,QImage)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM ppreview = hb_itemPutPtr( NULL, (QImage *) &preview );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, ppreview );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( ppreview );
  }
}

void SlotsQCameraImageCapture::imageExposed(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageExposed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQCameraImageCapture::imageMetadataAvailable(int id, const QString & key, const QVariant & value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageMetadataAvailable(int,QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pid, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraImageCapture::imageSaved(int id, const QString & fileName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageSaved(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pfileName = hb_itemPutC( NULL, QSTRINGTOSTRING(fileName) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, pfileName );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pfileName );
  }
}

void SlotsQCameraImageCapture::readyForCaptureChanged(bool ready)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyForCaptureChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pready = hb_itemPutL( NULL, ready );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pready );
    hb_itemRelease( psender );
    hb_itemRelease( pready );
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONBUFFERFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferFormatChanged(QVideoFrame::PixelFormat)", "bufferFormatChanged(QVideoFrame::PixelFormat)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONCAPTUREDESTINATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)", "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(int,QCameraImageCapture::Error,QString)", "error(int,QCameraImageCapture::Error,QString)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGEAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageAvailable(int,QVideoFrame)", "imageAvailable(int,QVideoFrame)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGECAPTURED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageCaptured(int,QImage)", "imageCaptured(int,QImage)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGEEXPOSED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageExposed(int)", "imageExposed(int)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGEMETADATAAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageMetadataAvailable(int,QString,QVariant)", "imageMetadataAvailable(int,QString,QVariant)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGESAVED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageSaved(int,QString)", "imageSaved(int,QString)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONREADYFORCAPTURECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readyForCaptureChanged(bool)", "readyForCaptureChanged(bool)" ) );
}
