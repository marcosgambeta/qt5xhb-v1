/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QBluetoothTransferReplySlots.h"


static SlotsQBluetoothTransferReply * s = NULL;

SlotsQBluetoothTransferReply::SlotsQBluetoothTransferReply(QObject *parent) : QObject(parent)
{
}

SlotsQBluetoothTransferReply::~SlotsQBluetoothTransferReply()
{
}

void SlotsQBluetoothTransferReply::finished(QBluetoothTransferReply * r)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QBluetoothTransferReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pr = hb_itemPutPtr( NULL, (QBluetoothTransferReply *) r );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pr );
    hb_itemRelease( psender );
    hb_itemRelease( pr );
  }
#endif
}

void SlotsQBluetoothTransferReply::transferProgress(qint64 bytesTransferred, qint64 bytesTotal)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "transferProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytesTransferred = hb_itemPutNI( NULL, bytesTransferred );
    PHB_ITEM pbytesTotal = hb_itemPutNI( NULL, bytesTotal );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbytesTransferred, pbytesTotal );
    hb_itemRelease( psender );
    hb_itemRelease( pbytesTransferred );
    hb_itemRelease( pbytesTotal );
  }
#endif
}

HB_FUNC( QBLUETOOTHTRANSFERREPLY_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothTransferReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(QBluetoothTransferReply*)", "finished(QBluetoothTransferReply*)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHTRANSFERREPLY_ONTRANSFERPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothTransferReply(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "transferProgress(qint64,qint64)", "transferProgress(qint64,qint64)" ) );
#else
  hb_retl(false);
#endif
}
