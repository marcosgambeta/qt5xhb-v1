/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QIODeviceSlots.h"


static SlotsQIODevice * s = NULL;

SlotsQIODevice::SlotsQIODevice(QObject *parent) : QObject(parent)
{
}

SlotsQIODevice::~SlotsQIODevice()
{
}

void SlotsQIODevice::aboutToClose ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToClose()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQIODevice::bytesWritten ( qint64 bytes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bytesWritten(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytes = hb_itemPutNI( NULL, bytes );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbytes );
    hb_itemRelease( psender );
    hb_itemRelease( pbytes );
  }
}

void SlotsQIODevice::readChannelFinished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readChannelFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQIODevice::readyRead ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyRead()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QIODEVICE_ONABOUTTOCLOSE )
{
  if( s == NULL )
  {
    s = new SlotsQIODevice(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToClose()", "aboutToClose()" ) );
}

HB_FUNC( QIODEVICE_ONBYTESWRITTEN )
{
  if( s == NULL )
  {
    s = new SlotsQIODevice(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bytesWritten(qint64)", "bytesWritten(qint64)" ) );
}

HB_FUNC( QIODEVICE_ONREADCHANNELFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQIODevice(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readChannelFinished()", "readChannelFinished()" ) );
}

HB_FUNC( QIODEVICE_ONREADYREAD )
{
  if( s == NULL )
  {
    s = new SlotsQIODevice(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readyRead()", "readyRead()" ) );
}
