/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaVideoProbeControlSlots.h"


static SlotsQMediaVideoProbeControl * s = NULL;

SlotsQMediaVideoProbeControl::SlotsQMediaVideoProbeControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaVideoProbeControl::~SlotsQMediaVideoProbeControl()
{
}

void SlotsQMediaVideoProbeControl::flush()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flush()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMediaVideoProbeControl::videoFrameProbed(const QVideoFrame & frame)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "videoFrameProbed(QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QVideoFrame *) &frame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

HB_FUNC( QMEDIAVIDEOPROBECONTROL_ONFLUSH )
{
  if( s == NULL )
  {
    s = new SlotsQMediaVideoProbeControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "flush()", "flush()" ) );
}

HB_FUNC( QMEDIAVIDEOPROBECONTROL_ONVIDEOFRAMEPROBED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaVideoProbeControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "videoFrameProbed(QVideoFrame)", "videoFrameProbed(QVideoFrame)" ) );
}
