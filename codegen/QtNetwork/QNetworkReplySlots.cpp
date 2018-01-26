%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQNetworkReply::downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "downloadProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytesReceived = hb_itemPutNI( NULL, bytesReceived );
    PHB_ITEM pbytesTotal = hb_itemPutNI( NULL, bytesTotal );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbytesReceived, pbytesTotal );
    hb_itemRelease( psender );
    hb_itemRelease( pbytesReceived );
    hb_itemRelease( pbytesTotal );
  }
}

void SlotsQNetworkReply::error( QNetworkReply::NetworkError code )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QNetworkReply::NetworkError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, (int) code );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcode );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
  }
}

$slot=|finished()

$slot=|metaDataChanged()

void SlotsQNetworkReply::uploadProgress( qint64 bytesSent, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "uploadProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytesSent = hb_itemPutNI( NULL, bytesSent );
    PHB_ITEM pbytesTotal = hb_itemPutNI( NULL, bytesTotal );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbytesSent, pbytesTotal );
    hb_itemRelease( psender );
    hb_itemRelease( pbytesSent );
    hb_itemRelease( pbytesTotal );
  }
}

$signalMethod=|downloadProgress(qint64,qint64)
$signalMethod=|error(QNetworkReply::NetworkError)
$signalMethod=|finished()
$signalMethod=|metaDataChanged()
$signalMethod=|uploadProgress(qint64,qint64)

$endSlotsClass
