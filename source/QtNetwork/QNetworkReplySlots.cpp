/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QNetworkReplySlots.h"


static SlotsQNetworkReply * s = NULL;

SlotsQNetworkReply::SlotsQNetworkReply(QObject *parent) : QObject(parent)
{
}

SlotsQNetworkReply::~SlotsQNetworkReply()
{
}

void SlotsQNetworkReply::downloadProgress ( qint64 bytesReceived, qint64 bytesTotal )
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

void SlotsQNetworkReply::error ( QNetworkReply::NetworkError code )
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

void SlotsQNetworkReply::finished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQNetworkReply::metaDataChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQNetworkReply::uploadProgress ( qint64 bytesSent, qint64 bytesTotal )
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

HB_FUNC( QNETWORKREPLY_ONDOWNLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "downloadProgress(qint64,qint64)", "downloadProgress(qint64,qint64)" ) );
}

HB_FUNC( QNETWORKREPLY_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QNetworkReply::NetworkError)", "error(QNetworkReply::NetworkError)" ) );
}

HB_FUNC( QNETWORKREPLY_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QNETWORKREPLY_ONMETADATACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged()", "metaDataChanged()" ) );
}

HB_FUNC( QNETWORKREPLY_ONUPLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "uploadProgress(qint64,qint64)", "uploadProgress(qint64,qint64)" ) );
}
