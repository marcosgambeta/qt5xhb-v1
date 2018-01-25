%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

$signalMethod=|error(int,int,QString)
$signalMethod=|imageAvailable(int,QVideoFrame)
$signalMethod=|imageCaptured(int,QImage)
$signalMethod=|imageExposed(int)
$signalMethod=|imageMetadataAvailable(int,QString,QVariant)
$signalMethod=|imageSaved(int,QString)
$signalMethod=|readyForCaptureChanged(bool)

$endSlotsClass
