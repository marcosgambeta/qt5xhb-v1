/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraCaptureBufferFormatControlSlots.h"


static SlotsQCameraCaptureBufferFormatControl * s = NULL;

SlotsQCameraCaptureBufferFormatControl::SlotsQCameraCaptureBufferFormatControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraCaptureBufferFormatControl::~SlotsQCameraCaptureBufferFormatControl()
{
}

void SlotsQCameraCaptureBufferFormatControl::bufferFormatChanged(QVideoFrame::PixelFormat format)
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

HB_FUNC( QCAMERACAPTUREBUFFERFORMATCONTROL_ONBUFFERFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraCaptureBufferFormatControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferFormatChanged(QVideoFrame::PixelFormat)", "bufferFormatChanged(QVideoFrame::PixelFormat)" ) );
}
