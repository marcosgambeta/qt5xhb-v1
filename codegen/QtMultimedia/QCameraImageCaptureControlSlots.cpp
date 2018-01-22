/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraImageCaptureControlSlots.h"


static SlotsQCameraImageCaptureControl * s = NULL;

SlotsQCameraImageCaptureControl::SlotsQCameraImageCaptureControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraImageCaptureControl::~SlotsQCameraImageCaptureControl()
{
}

void SlotsQCameraImageCaptureControl::error(int id, int error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pid, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQCameraImageCaptureControl::imageAvailable(int requestId, const QVideoFrame & buffer)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageAvailable(int,QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    PHB_ITEM pbuffer = hb_itemPutPtr( NULL, (QVideoFrame *) &buffer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prequestId, pbuffer );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
    hb_itemRelease( pbuffer );
  }
}

void SlotsQCameraImageCaptureControl::imageCaptured(int requestId, const QImage & preview)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageCaptured(int,QImage)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    PHB_ITEM ppreview = hb_itemPutPtr( NULL, (QImage *) &preview );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prequestId, ppreview );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
    hb_itemRelease( ppreview );
  }
}

void SlotsQCameraImageCaptureControl::imageExposed(int requestId)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageExposed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prequestId );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
  }
}

void SlotsQCameraImageCaptureControl::imageMetadataAvailable(int id, const QString & key, const QVariant & value)
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

void SlotsQCameraImageCaptureControl::imageSaved(int requestId, const QString & fileName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageSaved(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prequestId = hb_itemPutNI( NULL, requestId );
    PHB_ITEM pfileName = hb_itemPutC( NULL, QSTRINGTOSTRING(fileName) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prequestId, pfileName );
    hb_itemRelease( psender );
    hb_itemRelease( prequestId );
    hb_itemRelease( pfileName );
  }
}

void SlotsQCameraImageCaptureControl::readyForCaptureChanged(bool ready)
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

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(int,int,QString)", "error(int,int,QString)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONIMAGEAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageAvailable(int,QVideoFrame)", "imageAvailable(int,QVideoFrame)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONIMAGECAPTURED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageCaptured(int,QImage)", "imageCaptured(int,QImage)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONIMAGEEXPOSED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageExposed(int)", "imageExposed(int)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONIMAGEMETADATAAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageMetadataAvailable(int,QString,QVariant)", "imageMetadataAvailable(int,QString,QVariant)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONIMAGESAVED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "imageSaved(int,QString)", "imageSaved(int,QString)" ) );
}

HB_FUNC( QCAMERAIMAGECAPTURECONTROL_ONREADYFORCAPTURECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCaptureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readyForCaptureChanged(bool)", "readyForCaptureChanged(bool)" ) );
}
